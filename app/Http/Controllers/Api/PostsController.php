<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;

class PostsController
{
    
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $Posts = \App\Posts::get();
        if(count($Posts) > 0)
            foreach($Posts as $key => $temp) {
                $Posts[$key]->m_status_name = $temp->m_status_name();
                $Posts[$key]->m_category_name = $temp->m_category()->first()->name;
            }
            
        return response()->json([
            'status' => 'success',
            'data' => $Posts
        ], 200);
    }
    
    public function get($id)
    {
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:posts',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::find($id);
            return response()->json([
                'status' => 'success',
                'data' => $Posts
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'content' => 'required',
            'category' => 'required',
        ]);
        
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::create([
                'title' => $request->title,
                'caption' => $request->caption,
                'content' => $request->content,
                'tags' => implode(',',$request->tag),
                'date' => $request->date,
                'category' => $request->category,
                'image' => $request->image,
                'status' => $request->status
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Posts->id,
                'redirect' => url('administrator/content-management/project/'.$Posts->id)
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts',
            'title' => 'required',
            'content' => 'required',
            'category' => 'required',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::where('id', $request->id)
                ->update([
                    'title' => $request->title,
                    'caption' => $request->caption,
                    'content' => $request->content,
                    'tags' => $request->tags,
                    'date' => $request->date,
                    'category' => $request->category,
                    'image' => $request->image,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function softDelete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function restore(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::where('id', $request->id)
                ->restore();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function forceDelete(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::where('id', $request->id)
                ->forceDelete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

    public function publish(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:posts',
            'status' => 'required',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Posts = \App\Posts::where('id', $request->id)
                ->update([
                    'status' => $request->status
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
}
