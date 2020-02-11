<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;

class PostsGroupController
{
    
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $PostsGroup = \App\PostsGroup::get();
        return response()->json([
            'status' => 'success',
            'PostsGroup' => $PostsGroup
        ], 200);
    }
    
    public function get($id)
    {
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:posts_group',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $PostsGroup = \App\PostsGroup::find($id);
            return response()->json([
                'status' => 'success',
                'PostsGroup' => $PostsGroup
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'order_by' => 'required',
            'limit' => 'required',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $PostsGroup = \App\PostsGroup::create([
                'name' => $request->name,
                'category' => $request->category,
                'order_by' => $request->order_by,
                'sort' => $request->sort,
                'limit' => $request->limit,
                'additional_column' => $request->additional_column,
                'additional_operators' => $request->additional_operators,
                'additional_value' => $request->additional_value,
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $PostsGroup->id,
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts_group',
            'name' => 'required',
            'order_by' => 'required',
            'limit' => 'required',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $PostsGroup = \App\PostsGroup::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                    'category' => $request->category,
                    'order_by' => $request->order_by,
                    'sort' => $request->sort,
                    'limit' => $request->limit,
                    'additional_column' => $request->additional_column,
                    'additional_operators' => $request->additional_operators,
                    'additional_value' => $request->additional_value,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function softDelete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts_group',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $PostsGroup = \App\PostsGroup::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function restore(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts_group',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $PostsGroup = \App\PostsGroup::where('id', $request->id)
                ->restore();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function forceDelete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts_group',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $PostsGroup = \App\PostsGroup::where('id', $request->id)
                ->forceDelete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

}
