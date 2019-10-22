<?php

namespace App\Http\Controllers\Administrator\ContentManagement;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class ProjectController extends Controller
{
    
    public function __construct()
    {
        // $this->middleware('auth');
    }

    public function index()
    {
        return view('administrator.content-management');
    }

    public function new()
    {
        return view('administrator.content-management.project.new');
    }

    public function view($id)
    {
        $Projects = \App\Projects::find($id);
        return view('administrator.content-management.project.view', compact('Projects'));
    }

}
