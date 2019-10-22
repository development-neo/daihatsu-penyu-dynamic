<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class SectionController
{
    
    public function __construct()
    {

    }

    public function index()
    {
        $Sections = \App\Sections::get();
        return response()->json([
            'status' => 'success',
            'Sections' => $Sections
        ], 200);
    }
    
    public function get($id)
    {
        
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:sections',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Sections = \App\Sections::find($id);
            return response()->json([
                'status' => 'success',
                'Sections' => $Sections
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'max:50', Rule::unique('sections')->where(function($query) use ($request){
                return $query->where('pages', $request->pages);
            })],
            'html_id' => 'max:40',
            'html_class' => 'max:255',
            'pages' => 'required|exists:pages,id',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Sections = \App\Sections::where('pages', $request->pages)->get();
            $sequence = count($Sections) + 1;
            $Sections = \App\Sections::create([
                'name' => $request->name,
                'html_id' => $request->html_id,
                'html_class' => $request->html_class,
                'sequence' => $sequence,
                'pages' => $request->pages
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Sections->id
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:sections',
            'name' => ['required', 'max:50', Rule::unique('sections')->where(function($query) use ($request){
                return $query->where('pages', $request->pages)
                    ->where('id', '<>',$request->id);
            })],
            'html_id' => 'max:40',
            'html_class' => 'max:255',
        ]);
            
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Sections = \App\Sections::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                    'html_id' => $request->html_id,
                    'html_class' => $request->html_class,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function delete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:sections',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Sections = \App\Sections::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function updateSequence(Request $request) {

        $Sections = \App\Sections::find($request->id);
        $current_sequence = $Sections->sequence;
        $new_sequence = $request->sequence;
        if($new_sequence != $current_sequence)
            if($new_sequence < $current_sequence) {
                $ImpactSections = \App\Sections::where('sequence', '>=', $new_sequence)
                    ->where('sequence', '<', $current_sequence)
                    ->where('pages', $Sections->pages)
                    ->orderBy('sequence')
                    ->get()->toArray();
                foreach($ImpactSections as $key => $temp) {
                    \App\Sections::where('id', $temp['id'])
                        ->update(['sequence' => $temp['sequence'] + 1]);
                }
                \App\Sections::where('id', $request->id)
                    ->update(['sequence' => $request->sequence]);
            }
            else {
                $ImpactSections = \App\Sections::where('sequence', '<=', $new_sequence)
                    ->where('sequence', '>', $current_sequence)
                    ->where('pages', $Sections->pages)
                    ->orderBy('sequence')
                    ->get()->toArray();
                foreach($ImpactSections as $key => $temp) {
                    \App\Sections::where('id', $temp['id'])
                        ->update(['sequence' => $temp['sequence'] - 1]);
                }
                \App\Sections::where('id', $request->id)
                    ->update(['sequence' => $request->sequence]);
            } 

    }

}
