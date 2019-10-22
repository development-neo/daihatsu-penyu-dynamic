<?php

namespace App\Http\Controllers\Administrator\ContentManagement;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class PublicController extends Controller
{
    
    public function __construct()
    {
        // $this->middleware('auth');
    }

    public function index()
    {
        return view('administrator.content-management');
    }

    public function add()
    {

        $Projects = \App\Projects::active();
        if(!$Projects)
            return redirect(url('administrator/content-management'));

        $Publics = new \App\Publics();
        $Publics = $Publics
            ->with(['m_projects' => function($query){
                $query->where('status', 1);
            }])
            ->whereHas('m_projects', function($query){
                $query->where('status', 1);
            })
            ->where('parent', null)
            ->where('status', 1)
            ->get();

        return view('administrator.content-management.public.new', compact('Projects', 'Publics'));

    }

    public function view($i, $j)
    {
        $Projects = \App\Projects::find($i);
        $Publics = \App\Publics::find($j);
        
        // $Index = $Publics->m_pages()->first();
        // dd($Index);

        return view('administrator.content-management.public.view', compact('Projects', 'Publics'));

    }

}
