<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class GroupController
{
    
    public function __construct()
    {

    }

    public function index()
    {
        $Groups = \App\Groups::get();
        return response()->json([
            'status' => 'success',
            'Group' => $Groups
        ], 200);
    }
    
    public function get(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:pages',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Pages = \App\Pages::find($request->id);
            return response()->json([
                'status' => 'success',
                'Pages' => $Pages
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:50|unique:groups',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Groups = \App\Groups::get();
            $Groups = \App\Groups::create([
                'name' => $request->name,
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Groups->id,
                'redirect' => url('administrator/content-management')
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:groups',
            'name' => 'required|unique:groups,name,'.$request->id,
        ]);
            
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Groups = \App\Groups::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function delete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:groups',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Groups = \App\Groups::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

}
