<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class PagesController
{
    
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $Pages = \App\Pages::get();
        return response()->json([
            'status' => 'success',
            'Pages' => $Pages
        ], 200);
    }
    
    public function get($id)
    {
        
        $validator = Validator::make([
            'id' => $id
        ], [
            'id' => 'required|exists:pages',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Pages = \App\Pages::find($id);
            return response()->json([
                'status' => 'success',
                'Pages' => $Pages
            ], 200);
        }
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'max:50', Rule::unique('pages')->where(function($query) use ($request){
                return $query->where('parent', $request->parent);
            })],
            'features_images' => 'max:100',
            'description' => 'max:255',
            'is_index' => 'max:1',
            'group' => 'nullable|exists:groups,id',
            'parent' => 'nullable|exists:pages,id',
            'published_at' => 'date_format:Y-m-d',
        ]);
    
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Pages = \App\Pages::create([
                'name' => $request->name,
                'features_images' => $request->features_images,
                'description' => $request->description,
                'is_index' => $request->is_index,
                'group' => $request->group,
                'parent' => $request->parent,
                'status' => 1,
                'published_at' => $request->published_at,
            ]);
            return response()->json([
                'status' => 'success',
                'id' => $Pages->id
            ], 200);
        }
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:pages',
            'name' => ['required', 'max:50', Rule::unique('pages')->where(function($query) use ($request){
                return $query->where('parent', $request->parent)
                    ->where('id', '<>',$request->id);
            })],
            'features_images' => 'max:100',
            'description' => 'max:255',
            'is_index' => 'max:1',
            'group' => 'nullable|exists:groups,id',
            'parent' => 'nullable|exists:pages,id',
            'published_at' => 'date_format:Y-m-d',
        ]);
            
        if ($validator->fails())
            return response()->json([
                'status' => 'failed',
                'input' => $validator->messages(),
            ], 200);
        else {
            $Pages = \App\Pages::where('id', $request->id)
                ->update([
                    'name' => $request->name,
                    'features_images' => $request->features_images,
                    'description' => $request->description,
                    'is_index' => $request->is_index,
                    'group' => $request->group,
                    'parent' => $request->parent,
                    'status' => 1,
                    'published_at' => $request->published_at,
                ]);
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }
    
    public function delete(Request $request)
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
            $Pages = \App\Pages::where('id', $request->id)
                ->delete();
            return response()->json([
                'status' => 'success'
            ], 200);
        }
    }

}
