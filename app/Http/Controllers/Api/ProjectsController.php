<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;

class ProjectsController
{
    
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $Projects = \App\Projects::get();
        return response()->json([
            'status' => 'success',
            'Projects' => $Projects
        ], 200);
    }
    
    public function get($id)
    {
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:projects',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Projects = \App\Projects::find($id);
            return response()->json([
                'status' => 'success',
                'Projects' => $Projects
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:projects',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Projects = \App\Projects::create([
                'name' => $request->name,
                'status' => 1
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Projects->id,
                'redirect' => url('administrator/content-management/project/'.$Projects->id)
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:projects',
            'name' => 'required|unique:projects,name,'.$request->id,
            'status' => 'required',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Projects = \App\Projects::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                    'status' => $request->status,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function delete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:projects',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Projects = \App\Projects::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

}
