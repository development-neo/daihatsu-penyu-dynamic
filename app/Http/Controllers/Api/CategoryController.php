<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;

class CategoryController
{
    
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $Category = \App\Category::get();
        return response()->json([
            'data' => $Category
        ], 200);
    }
    
    public function get($id)
    {
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:category',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Category = \App\Category::find($id);
            return response()->json([
                'status' => 'success',
                'data' => $Category
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required'
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Category = \App\Category::create([
                'name' => $request->name,
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Category->id,
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:category',
            'name' => 'required'
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Category = \App\Category::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function softDelete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:category',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Category = \App\Category::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function restore(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:category',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Category = \App\Category::where('id', $request->id)
                ->restore();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function forceDelete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:category',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Category = \App\Category::where('id', $request->id)
                ->forceDelete();
            return response()->json([
                'status' => 'success',
                'message' => 'Data Sucessfuly Deleted !'
            ], 200);
        }
    }

}
