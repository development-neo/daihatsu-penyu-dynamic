<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IntepreterController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($segment = '', $segment2 = '', $segment3 = '', $segment4 = '', $segment5 = '')
    {
        $html = new \App\Projects;
        $html = $html->array_initialization();
        $intepreter = $this->intepreter($html);
        return view('render_html', compact('intepreter'));
    }

    public function intepreter($html = '') {
        $sections = $html['body']['sections'];
        $intepreter['head'] = [
            'meta' => $html['meta'],
            'css' => $html['css']
        ];
        $intepreter['body'] = '';
        $intepreter['body'] .= '<div class="_container">';
        if(!empty($sections)) 
            foreach($sections as $key => $d_sections) {
                $intepreter['body'] .= '<div id="'.$d_sections['id'].'" class="_section '.$d_sections['class'].'">';
                if(!empty($d_sections['grids']))
                    foreach($d_sections['grids'] as $key => $d_grids) {
                        $intepreter['body'] .= '<div class="_grid grid-'.$d_grids['length'].' '.$d_grids['class'].'">';
                        if(!empty($d_grids['components'])) {
                            foreach($d_grids['components'] as $d_components) {
                                $intepreter['body'] .= $this->render_component($d_components);
                            }
                        }
                        $intepreter['body'] .= '</div>';
                    }
                $intepreter['body'] .= '</div>';
            }
        $intepreter['body'] .= '</div>';

        return $intepreter;
    }

    public function render_component($d_components) {

        $string = '';
        if($d_components['type'] == 'banner') 
            $string = $this->banner($d_components);
        elseif($d_components['type'] == 'heading') 
            $string = $this->heading($d_components);
        elseif($d_components['type'] == 'paragraph') 
            $string = $this->paragraph($d_components);
        elseif($d_components['type'] == 'image') 
            $string = $this->image($d_components);
        elseif($d_components['type'] == 'video') 
            $string = $this->video($d_components);
        elseif($d_components['type'] == 'button') 
            $string = $this->button($d_components);
        elseif($d_components['type'] == 'link') 
            $string = $this->link($d_components);

        return $string;
    } 

    public function banner($d_components) {

        $string = '';
        $data = (array)$d_components['data'];
        if(count($data) > 0) {
            if($d_components['library_component'] == 'bootstrap_slider') {
                $string .= '<div id="'.$d_components['id'].'" class="'.$d_components['class'].'carousel slide" data-ride="carousel">';
                $string .= '<ol class="carousel-indicators">';
                foreach($data as $key => $d_data) {
                    $arr_d_data = (array)$d_data;
                    $string .= '<li data-target="#'.$d_components['id'].'" data-slide-to="'.$key.'" '. ($key == 0 ? ' class="active"' : '') . '></li>';
                }
                $string .= '</ol>';
                $string .= '<div class="carousel-inner">';
                foreach($data as $key => $d_data) {
                    $arr_d_data = (array)$d_data;
                    $string .= '<div class="carousel-item '. ($key == 0 ? 'active' : '') . '">';
                    $string .= '<img src="'.$arr_d_data['src'].'" style="width: 100%;">';
                    $string .= '</div>';
                }
                $string .= '</div>';
                $string .= '</div>';
            }
        }
        return $string;
        
    }

    public function heading($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<'.$d_components['data']['type'].' id="'.$d_components['id'].'" class="'.$d_components['class'].'">'.$d_components['data']['value'].'</'.$d_components['data']['type'].'>';
        return $string;

    }
    
    public function paragraph($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<'.$d_components['data']['type'].' id="'.$d_components['id'].'" class="'.$d_components['class'].'">'.$d_components['data']['value'].'</'.$d_components['data']['type'].'>';
        return $string;

    }

    public function image($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<img src="'.$d_components['data']['src'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'" style="width: 100%;"/>';
        return $string;

    }

    public function video($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<embed src="'.$d_components['data']['src'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'" style="width: 100%;height auto"></embed>';
        return $string;

    }
    
    public function button($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<a href="'.$d_components['data']['href'].'" id="'.$d_components['id'].'" class="_btn'.$d_components['class'].'">'.$d_components['data']['value'].'</a>';
        return $string;

    }

    public function link($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<a href="'.$d_components['data']['href'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'">'.$d_components['data']['value'].'</a>';
        return $string;

    }

}
