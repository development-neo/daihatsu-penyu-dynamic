<?php

namespace App\Http\Controllers\Api;

use Validator;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UploadsController
{
    
    public function __construct()
    {

    }

    public function images()
    {

        $files = scandir(public_path() . '/uploads/image');
        return response()->json([
            'status' => 'success',
            'data' => $files,
        ], 200);
    }
    
}
