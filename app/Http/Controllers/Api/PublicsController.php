<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class PublicsController
{
    
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $Publics = \App\Publics::get();
        return response()->json([
            'status' => 'success',
            'Publics' => $Publics
        ], 200);
    }
    
    public function get($id)
    {
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:publics',
        ]);
    
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Publics = \App\Publics::find($id);
            return response()->json([
                'status' => 'success',
                'Publics' => $Publics
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'max:50', Rule::unique('publics')->where(function($query) use ($request){
                return $query->where('parent', $request->parent)
                    ->where('projects', $request->projects);
            })],
            'meta' => 'max:1000',
            'parent' => 'nullable|exists:publics,id',
            'pages' => 'nullable|exists:pages,id',
            'projects' => 'required|exists:projects,id',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Publics = \App\Publics::create([
                'name' => $request->name,
                'url' => preg_replace('/\W+/', '-', strtolower($request->name)),
                'meta' => $request->meta,
                'parent' => $request->parent,
                'pages' => $request->pages,
                'projects' => $request->projects,
                'status' => 1
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Publics->id,
                'redirect' => url('administrator/content-management/publics/' . $request->projects . '/view/' . $Publics->id)
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:publics',
            'name' => ['required', 'max:50', Rule::unique('publics')->where(function($query) use ($request){
                return $query->where('parent', $request->parent)
                    ->where('id', '<>',$request->id);
            })],
            'meta' => 'max:1000',
            'parent' => 'nullable|exists:publics,id',
            'pages' => 'nullable|exists:pages,id',
            'projects' => 'required|exists:projects,id',
        ]);
            
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Projects = \App\Publics::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                    'url' => preg_replace('/\W+/', '-', strtolower($request->name)),
                    'meta' => $request->meta,
                    'parent' => $request->parent,
                    'pages' => $request->pages,
                    'projects' => $request->projects,
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
            'id' => 'required|exists:publics',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Publics = \App\Publics::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

}
