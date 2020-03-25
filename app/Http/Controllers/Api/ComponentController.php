<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ComponentController
{
    
    public function __construct()
    {

    }

    public function index()
    {
        $Components = \App\Components::get();
        return response()->json([
            'status' => 'success',
            'Components' => $Components
        ], 200);
    }
    
    public function get($id)
    {
        
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:components',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Component = \App\Components::find($id);
            $Component->type_component = $Component->m_type_component()->first()->name;
            $JC = new \App\Http\Controllers\JsonController();
            $Component->component_html = $JC->objectToHtml(json_decode($Component->content));
            return response()->json([
                'status' => 'success',
                'data' => $Component
            ], 200);
        }
    }

    public function getByGrid($id)
    {
        
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:grids',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Components = \App\Components::where('grids', $id)
                ->orderBy('sequence')
                ->get();
            $data = [];
            foreach($Components as $key => $temp) {
                $temp['type_component'] = $temp->m_type_component()->first()->name;
                $JC = new \App\Http\Controllers\JsonController();
                $temp['component_html'] = $JC->objectToHtml(json_decode($temp->content));
                array_push($data, $temp);
            }
            return response()->json([
                'status' => 'success',
                'data' => $data
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'html_id' => 'max:40',
            'html_class' => 'max:255',
            'content' => 'required',
            'type_component' => 'required|exists:type_component,id',
            'grids' => 'required|exists:grids,id',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Components = \App\Components::where('grids', $request->grids)->get();
            $sequence = count($Components) + 1;
            $Components = \App\Components::create([
                'html_id' => $request->html_id,
                'html_class' => $request->html_class,
                'content' => $request->content,
                'library_component' => $request->library_component,
                'type_component' => $request->type_component,
                'sequence' => $sequence,
                'grids' => $request->grids
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Components->id
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'html_id' => 'max:40',
            'html_class' => 'max:255',
            'content' => 'required',
            'type_component' => 'required|exists:type_component,id',
            'id' => 'required|exists:components,id',
        ]);
            
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            \App\Components::where('id', $request->id)
                ->update([
                    'content' => $request->content,
                    'library_component' => $request->library_component,
                    'type_component' => $request->type_component,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function delete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:components',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            \App\Components::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function updateSequence(Request $request) {

        $Components = \App\Components::find($request->id);
        $current_sequence = $Components->sequence;
        $new_sequence = $request->sequence;
        if($new_sequence != $current_sequence)
            if($new_sequence < $current_sequence) {
                $ImpactComponents = \App\Components::where('sequence', '>=', $new_sequence)
                    ->where('sequence', '<', $current_sequence)
                    ->where('grids', $Components->grids)
                    ->orderBy('sequence')
                    ->get()->toArray();
                foreach($ImpactComponents as $key => $temp) {
                    \App\Components::where('id', $temp['id'])
                        ->update(['sequence' => $temp['sequence'] + 1]);
                }
                \App\Components::where('id', $request->id)
                    ->update(['sequence' => $request->sequence]);
            }
            else {
                $ImpactComponents = \App\Components::where('sequence', '<=', $new_sequence)
                    ->where('sequence', '>', $current_sequence)
                    ->where('grids', $Components->grids)
                    ->orderBy('sequence')
                    ->get()->toArray();
                foreach($ImpactComponents as $key => $temp) {
                    \App\Components::where('id', $temp['id'])
                        ->update(['sequence' => $temp['sequence'] - 1]);
                }
                \App\Components::where('id', $request->id)
                    ->update(['sequence' => $request->sequence]);
            } 

        return response()->json([
            'status' => 'success'
        ], 200);
    }

}
