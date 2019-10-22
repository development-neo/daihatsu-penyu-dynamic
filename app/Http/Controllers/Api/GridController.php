<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class GridController
{
    
    public function __construct()
    {

    }

    public function index()
    {
        $Grids = \App\Grids::get();
        return response()->json([
            'status' => 'success',
            'Grids' => $Grids
        ], 200);
    }
    
    public function get($id)
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
            $Grids = \App\Grids::find($id);
            return response()->json([
                'status' => 'success',
                'Grids' => $Grids
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'html_id' => 'max:40',
            'html_class' => 'max:255',
            'length' => 'required|max:12',
            'sections' => 'required|exists:sections,id',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Grids = \App\Grids::where('sections', $request->sections)->get();
            $sequence = count($Grids) + 1;
            $Grids = \App\Grids::create([
                'html_id' => $request->html_id,
                'html_class' => $request->html_class,
                'length' => $request->length,
                'sequence' => $sequence,
                'sections' => $request->sections
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Grids->id
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'html_id' => 'max:40',
            'html_class' => 'max:255',
            'length' => 'required|max:12',
        ]);
            
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Grids = \App\Grids::where('id', $request->id)
                ->update([
                    'html_id' => $request->html_id,
                    'html_class' => $request->html_class,
                    'length' => $request->length,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function delete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:grids',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Grids = \App\Grids::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function updateSequence(Request $request) {

        $Grids = \App\Grids::find($request->id);
        $current_sequence = $Grids->sequence;
        $new_sequence = $request->sequence;
        if($new_sequence != $current_sequence)
            if($new_sequence < $current_sequence) {
                $ImpactGrids = \App\Grids::where('sequence', '>=', $new_sequence)
                    ->where('sequence', '<', $current_sequence)
                    ->where('sections', $Grids->sections)
                    ->orderBy('sequence')
                    ->get()->toArray();
                foreach($ImpactGrids as $key => $temp) {
                    \App\Grids::where('id', $temp['id'])
                        ->update(['sequence' => $temp['sequence'] + 1]);
                }
                \App\Grids::where('id', $request->id)
                    ->update(['sequence' => $request->sequence]);
            }
            else {
                $ImpactGrids = \App\Grids::where('sequence', '<=', $new_sequence)
                    ->where('sequence', '>', $current_sequence)
                    ->where('sections', $Grids->sections)
                    ->orderBy('sequence')
                    ->get()->toArray();
                foreach($ImpactGrids as $key => $temp) {
                    \App\Grids::where('id', $temp['id'])
                        ->update(['sequence' => $temp['sequence'] - 1]);
                }
                \App\Grids::where('id', $request->id)
                    ->update(['sequence' => $request->sequence]);
            } 

        return response()->json([
            'status' => 'success'
        ], 200);
    }

}
