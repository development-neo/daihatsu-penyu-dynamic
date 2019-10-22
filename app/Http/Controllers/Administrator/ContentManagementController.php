<?php

namespace App\Http\Controllers\Administrator;

use Illuminate\Http\Request;

class ContentManagementController
{
    
    public function __construct() {
        // $this->middleware('auth');
    }

    public function index() {

        $Projects = \App\Projects::active();
        $Publics = \App\Publics::where('projects', $Projects->id)
            ->where('parent', null)
            ->get();
        $Groups = \App\Groups::get();
        return view('administrator.content-management', compact('Projects', 'Publics', 'Groups'));

    }
}
