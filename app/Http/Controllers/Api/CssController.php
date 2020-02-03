<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class CssController
{
    
    public function __construct()
    {

    }

    public function index()
    {
        
    }
    
    public function get($id)
    {
        
    }

    public function create(Request $request)
    {
        
    }

    public function update(Request $request)
    {
        $css_1900_1201 = $request->input('css_1900_1201');
        
        \App\Css::where('id', 1)
            ->update([
                'code' => $css_1900_1201
            ]);
        return response()->json([
            'status' => 'success'
        ], 200);
    }
    
    public function delete(Request $request)
    {
        
    }

    public function updateSequence(Request $request) 
    {

    }

}
