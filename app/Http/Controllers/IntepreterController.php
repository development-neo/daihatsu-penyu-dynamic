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

        $intepreter['body']['navbar'] = '';
        $intepreter['body']['navbar'] .= '<div class="_navbar">';
        $intepreter['body']['navbar'] .= '<div class="_container _width-d-1000">';
        $intepreter['body']['navbar'] .= '<div class="_menu-link">';
        $intepreter['body']['navbar'] .= '<ul>';
        
        if(count($html['body']['navbar']['data']) > 0)
            foreach($html['body']['navbar']['data'] as $key => $temp) 
                $intepreter['body']['navbar'] .= '<li><a href="'.$temp['url'].'">'.$temp['val'].'</a></li>';
                
        $intepreter['body']['navbar'] .= '</ul>';
        $intepreter['body']['navbar'] .= '</div>';
        $intepreter['body']['navbar'] .= '</div>';
        $intepreter['body']['navbar'] .= '</div>';
        $intepreter['body']['section'] = '';
        if(!empty($sections)) 
            foreach($sections as $key => $d_sections) {
                $intepreter['body']['section'] .= '<div id="'.$d_sections['id'].'" class="_section '.$d_sections['class'].'">';
                $intepreter['body']['section'] .= '<div class="_container">';
                if(!empty($d_sections['grids']))
                    foreach($d_sections['grids'] as $key => $d_grids) {
                        $intepreter['body']['section'] .= '<div class="_grid grid-'.$d_grids['length'].' '.$d_grids['class'].'">';
                        $intepreter['body']['section'] .= '<div style="position: absolute;top: 0px;right: 0px;z-index: 20;background-color: #aaa;font-size: 14px;padding: 10px 20px;color: #fff;">'.
                        'Section ID : '. $d_sections['pk'].'<br/>'.
                        'Grid ID : '. $d_grids['pk'].
                        '</div>';
                        if(!empty($d_grids['components'])) {
                            foreach($d_grids['components'] as $d_components) {
                                $intepreter['body']['section'] .= $this->render_component($d_components);
                            }
                        }
                        $intepreter['body']['section'] .= '</div>';
                    }
                $intepreter['body']['section'] .= '</div>';
                $intepreter['body']['section'] .= '</div>';
            }

        $intepreter['footer']['javascript'] = $html['javascript'];
        // dd($intepreter);

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
        elseif($d_components['type'] == 'accordion') 
            $string = $this->accordion($d_components);
        elseif($d_components['type'] == 'slider') 
            $string = $this->slider($d_components);

        return $string;
    } 

    public function banner($d_components) {

        $string = '';
        $data = (array)$d_components['data'];
        if(count($data) > 0) {
            // if($d_components['library_component'] == 'bootstrap_slider') {
                $string .= '<div class="'.$d_components['library_component'].'">';
                $string .= '<div id="'.$d_components['id'].'" class="'.$d_components['class'].' carousel slide" data-ride="carousel">';
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
                    $string .= '<div class="carousel-caption d-none d-md-block">';
                    $string .= '<h5>'.(array_key_exists('heading', $arr_d_data) ? $arr_d_data['heading'] : '').'</h5>';
                    $string .= '<p>'.(array_key_exists('description', $arr_d_data) ? $arr_d_data['description'] : '').'</p>';
                    $string .= ' </div>';
                    $string .= '</div>';
                }
                $string .= '</div>';
                    
                $string .= 
                    '<a class="carousel-control-prev" href="#'.$d_components['id'].'" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#'.$d_components['id'].'" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>';
                $string .= '</div>';
                $string .= '</div>';
            // }
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

    public function accordion($d_components) {

        // dd($d_components);
        $string = '';
        $data = (array)$d_components['data'];
        if(count($data) > 0) {
            $string .= '<div id="'.$d_components['id'].'" class="'.$d_components['class'].' accordion">';
            // $string .= '<div class="carousel-inner">';
            foreach($data as $key => $d_data) {
                $arr_d_data = (array)$d_data;
                $arr_heading = (array)$arr_d_data['heading'];
                $arr_body = (array)$arr_d_data['body'];
                // dd($arr_heading);
                $string .= '<div class="card">
                    <div class="card-header" id="heading'.$key.'">
                        <'.$arr_heading['type'].' class="mb-0">
                            <button class="btn btn-link '.($key == 0 ? 'true' : 'false').'" data-toggle="collapse" data-target="#collapse'.$key.'" aria-expanded="'.($key == 0 ? 'true' : 'false').'" aria-controls="collapse'.$key.'">'.$arr_heading['value'].'</button>
                        </'.$arr_heading['type'].'>
                    </div>

                    <div id="collapse'.$key.'" class="collapse" aria-labelledby="heading'.$key.'" data-parent="#'.$d_components['id'].'">
                        <div class="card-body">'.$arr_body['value'].'</div>
                    </div>
                </div>';
                // $string .= '<div class="carousel-item '. ($key == 0 ? 'active' : '') . '">';
                // $string .= '<img src="'.$arr_d_data['src'].'" style="width: 100%;">';
                // $string .= '</div>';
            }
            // $string .= '</div>';
            $string .= '</div>';
        }
        // dd($string);
        return $string;
        
    }

    public function slider($d_components) {

        $string = '';
        $data = (array)$d_components['data'];
        if(count($data) > 0) {
            $string .= '<div class="'.$d_components['library_component'].'">';
            $string .= '<div id="'.$d_components['id'].'" class="slider-item-container '.$d_components['class'].'">';
            foreach($data as $key => $d_data) {
                $arr_d_data = (array)$d_data;
                $string .= '<div class="slider-item '. ($key == 0 ? 'active' : '') . '">';
                $string .= '<img src="'.$arr_d_data['src'].'">';
                $string .= '<h5 class="slider-heading">'.$arr_d_data['heading'].'</h5>';
                $string .= '<p class="slider-description">'.$arr_d_data['description'].'</p>';
                $string .= '</div>';
            }
            $string .= '</div>';
            $string .= '</div>';
        }
        return $string;

    }

}
