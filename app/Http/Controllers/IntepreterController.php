<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IntepreterController
{
    
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
            'css' => $html['css'],
            'title' => $html['name']['page'],
        ];

        $intepreter['body'] = [
            'class' => '',
            'navbar' => '',
            'section' => '',
            'footer' => '',
        ];

        $intepreter['body']['class'] = $html['name']['class'];
        // $intepreter['body']['navbar'] .= '<div class="_navbar">';
        // $intepreter['body']['navbar'] .= '<div class="_container _width-d-1000">';
        // foreach($html['body']['navbar']['logo'] as $logo)
        //     $intepreter['body']['navbar'] .= '<a href="/beranda"><img src="'.$logo.'" class="_site-logo"></a>';
        // $intepreter['body']['navbar'] .= '</div>';
        // $intepreter['body']['navbar'] .= '</div>';

        $intepreter['body']['footer'] = '';
        

        $intepreter['body']['section'] = '';
        if(!empty($sections))
            foreach($sections as $key => $d_sections) {
                $intepreter['body']['section'] .= '<div id="'.$d_sections['id'].'" class="_section '.$d_sections['class'].'">';
                $intepreter['body']['section'] .= '<div class="_container">';
                if(!empty($d_sections['grids']))
                    foreach($d_sections['grids'] as $key => $d_grids) {
                        $intepreter['body']['section'] .= '<div class="_grid grid-'.$d_grids['length'].' '.$d_grids['class'].'">';
                        // $intepreter['body']['section'] .= '<div style="position: absolute;top: 0px;right: 0px;z-index: 20;background-color: #aaa;font-size: 14px;padding: 10px 20px;color: #fff;">'.
                        //     'Section ID : '. $d_sections['pk'].'<br/>'.
                        //     'Grid ID : '. $d_grids['pk'].
                        //     '</div>';
                        if(!empty($d_grids['components'])) {
                            foreach($d_grids['components'] as $d_components) {
                                $JsonController = new \App\Http\Controllers\JsonController;
                                if($d_components['type'] == 'image' || $d_components['type'] == 'video' || $d_components['type'] == 'heading' || $d_components['type'] == 'paragraph' || $d_components['type'] == 'card') {
                                    $attribute = (array)$d_components['data']->attribute;
                                    $attribute['class'] = $d_components['class'] . ' ' . $d_components['library_component'];
                                    $attribute['id'] = $d_components['id'];
                                    $d_components['data']->attribute = (object)$attribute;
                                }
                                // $d_components['data']->attribute = [
                                //     'id' => $d_components['id'],
                                //     'class' => $d_components['class'],
                                // ];
                                // $d_components['data']->attribute['id'] = $d_components['id'];
                                if(isset($_GET['json']))
                                    $intepreter['body']['section'] .= '<pre>'.print_r($d_components['data'], true).'</pre>';
                                else
                                    $intepreter['body']['section'] .= $JsonController->objectToHtml($d_components['data']);
                                    // $intepreter['body']['section'] .= $this->render_component($d_components);
                            }
                        }
                        $intepreter['body']['section'] .= '</div>';
                    }
                $intepreter['body']['section'] .= '</div>';
                $intepreter['body']['section'] .= '</div>';
            }

        $intepreter['footer']['javascript'] = $html['javascript']['library_component'];
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
        elseif($d_components['type'] == 'card') 
            $string = $this->card($d_components);

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
                    $string .= '<img src="'.url('uploads/image/').'/'.$arr_d_data['src'].'" style="width: 100%;">';
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
        $string .= '<img src="'.url('uploads/image/').'/'.$d_components['data']['src'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'" style="max-width: 100%;"/>';
        return $string;

    }

    public function video($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '<div class="'.$d_components['class'].'video">';
        
        if(is_object($d_components['data']['src'])) {
            if(array_key_exists('img', $d_components['data']['src'])) {
                if(strpos($d_components['data']['src']->img, 'http') !== false)
                    $string .= '<img src="'.$d_components['data']['src']->img.'">';
                else
                    $string .= '<img src="'.url('uploads/image/').'/'.$d_components['data']['src']->img.'">';
            }
            if(array_key_exists('embed', $d_components['data']['src']))
                $string .= '<embed src="'.$d_components['data']['src']->embed.'" style="width: 100%;height auto"></embed>';
        } else {
            $string .= '<embed src="'.$d_components['data']['src'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'" style="width: 100%;"></embed>';
        }
        $string .= '</div>';
        return $string;

    }
    
    public function button($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<a href="'.$d_components['data']['href'].'" id="'.$d_components['id'].'" class="_btn '.$d_components['class'].'">'.$d_components['data']['value'].'</a>';
        return $string;

    }

    public function link($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<a href="'.(strpos($d_components['data']['href'], 'http') !== false ? $d_components['data']['href'] : url($d_components['data']['href'])).'" id="'.$d_components['id'].'" class="'.$d_components['class'].'">'.$d_components['data']['value'].'</a>';
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
            foreach($data as $key_data => $d_data) {
                $arr_d_data = (array)$d_data;
                $string .= '<div class="slider-item '. ($key_data == 0 ? 'active' : '') . '">';
                if(is_object($arr_d_data['src'])) {
                    if(array_key_exists('img', $arr_d_data['src'])) {
                        if(strpos($arr_d_data['src']->img, 'http') !== false)
                            $string .= '<img src="'.$arr_d_data['src']->img.'">';
                        else
                            $string .= '<img src="'.url('uploads/image/').'/'.$arr_d_data['src']->img.'">';
                    }
                    if(array_key_exists('embed', $arr_d_data['src']))
                        $string .= '<embed src="'.$arr_d_data['src']->embed.'" style="width: 100%;height auto"></embed>';
                } else {
                    if(strpos($arr_d_data['src'], 'http') !== false)
                        $string .= '<img src="'.$arr_d_data['src'].'">';
                    else
                        $string .= '<img src="'.url('uploads/image/').'/'.$arr_d_data['src'].'">';
                }
                $string .= '<div class="slider-text-container">';
                if(array_key_exists('heading', $arr_d_data))
                    if(count($arr_d_data['heading']) > 0)
                        foreach($arr_d_data['heading'] as $key => $d_heading)
                            $string .= '<'.$d_heading->tag.' class="slider-heading">'.$d_heading->text.'</'.$d_heading->tag.'>';
                if(array_key_exists('description', $arr_d_data))
                    if(count($arr_d_data['description']) > 0)
                        foreach($arr_d_data['description'] as $key => $d_description)
                            $string .= '<'.$d_description->tag.' class="slider-description">'.$d_description->text.'</'.$d_description->tag.'>';
                $string .= '</div>';
                if(array_key_exists('additional', $arr_d_data)) {
                    if(count((array)$arr_d_data['additional']) > 0) {
                        foreach($arr_d_data['additional'] as $keyad => $additional) {
                            if($keyad == 'slider') {
                                $string .= '<div class="_additional-slider">';
                                $string .= '<ul class="_indicator-additional-slider">';
                                foreach($additional as $keysl => $slider) {
                                    $string .= '<li target="additional-slider-' . $keysl . '"><span>'.$slider->indicator.'</span></li>';
                                }
                                $string .= '<div class="linear-line"></div>';
                                $string .= '</ul>';
                                $string .= '<div class="_content-additional-slider">';
                                foreach($additional as $keysl => $slider) {
                                    $string .= '<div class="_content-slider" id="additional-slider-' . $key_data . '-' . $keysl . '">';
                                    if(count($slider->content) > 0) {
                                        foreach($slider->content as $keyc => $content) {
                                            $string .= '<div class="_item-additional-slider ' . ($keyc == 0 ? 'active' : '') . '">';
                                            if(array_key_exists('image', $content))
                                                $string .= '<img src="' . $content->image . '"/>';
                                            if(array_key_exists('text', $content))
                                                $string .= '<p class="_paragraph_small _text_right _sg_line_color_2"">' . $content->text . '</p>';
                                            $string .= '</div>';
                                        }
                                    }
                                    $string .= '</div>';
                                }
                                $string .= '</div>';
                                $string .= '</div>';
                            } elseif($keyad == 'button') {
                                if(count($additional) > 0) {
                                    $string .= '<div class="_button-group">';
                                    foreach($additional as $key_item => $item_additional) 
                                        $string .= $this->button([
                                            'id' => '',
                                            'class' => '_btn _button _primary _sm _bordered',
                                            'data' => $item_additional
                                        ]);
                                    $string .= '</div>';
                                }
                            } elseif($keyad == 'paragraph') {
                                if(count($additional) > 0) {
                                    $string .= '<div class="_paragraph-group">';
                                    foreach($additional as $key_item => $item_additional)
                                        $string .= $this->paragraph([
                                            'id' => '',
                                            'class' => '_paragraph_small',
                                            'data' => $item_additional
                                        ]);
                                    $string .= '</div>';
                                }
                            }
                            else 
                                null;
                        }
                    }
                }
                $string .= '</div>';
            }
            $string .= '</div>';
            $string .= '</div>';
        }
        return $string;

    }

    public function card($d_components) {

        $d_components = (array)$d_components;
        $d_components['data'] = (array)$d_components['data'];
        $string = '';
        $string .= '<div id="'.$d_components['id'].'" class="'.$d_components['class'].' '.$d_components['library_component'].' _card">';
        $string .= '<img src="'.url('uploads/image/').'/'.$d_components['data']['src'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'" style="width: 100%;"/>';
        $string .= '<div class="_card-text-container">';
        $string .= '<h4 class="_card-heading">'.$d_components['data']['title'].'</h4>';
        if(count($d_components['data']['additional']) > 0){
            foreach($d_components['data']['additional'] as $key => $additional) {
                $string .= '<p class="_card-text">'.$additional.'</h4>';
            }
        }
        $string .= '</div>';
        $string .= '</div>';
        return $string;

    }

}
