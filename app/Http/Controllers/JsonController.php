<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class JsonController extends Controller
{

    private $object;
    
    public function __construct()
    {
        $this->object = [
            'tag' => '',
            'attribute' => [
                
            ],
            'child' => [
                
            ],
        ];
    }
    
    public function index($segment = '', $segment2 = '', $segment3 = '', $segment4 = '', $segment5 = '')
    {
        $html = new \App\Projects;
        $html = $html->array_initialization();
        $intepreter = $this->intepreter($html);
        return view('render_html', compact('intepreter'));
    }

    public function generateObject() {

        $Components = new \App\ComponentsObject;
        $Components = $Components
            ->where('type_component_id', 4)
            ->get();

            // dd($Components);

        echo '<pre style="font-size:10px;">';
        $array = [];

        foreach($Components as $key => $temp) {
            $html_object = $this->object;
            $content = json_decode($temp->content);
            if($temp->type_component_id == '1') {
                $html_object['tag'] = 'div';
                $html_object['attribute']['class'] = $temp->library_component;

                $carousel = $this->object;
                $carousel['tag'] = 'div';
                $carousel['attribute'] = [
                    'class' => $temp['class'] . ' carousel slide',
                    'id' => $temp['html_id'],
                    'data-ride' => 'carousel'
                ];

                $indicator = $this->object;
                $indicator['tag'] = 'ol';
                $indicator['attribute'] = [
                    'class' => 'carousel-indicators'
                ];

                $carouseInner = $this->object;
                $carouseInner['tag'] = 'div';
                $carouseInner['attribute'] = [
                    'class' => 'carousel-inner'
                ];

                $i = 0;
                if(count($content) > 0) 
                    foreach($content as $keys => $contents) {
                        $a = $this->object;
                        $a['tag'] = 'li';
                        $a['attribute'] = [
                            'data-target' => '#'.$temp['html_id'],
                            'data-slide-to' => $keys,
                            'class' => ($i == 0 ? 'active' : ''),
                        ];
                        $indicator['child'][$i] = $a;

                        $carouselItem = $this->object;
                        $carouselItem['tag'] = 'div';
                        $carouselItem['attribute'] = [
                            'class' => 'carousel-item '.($i == 0 ? 'active' : '')
                        ];

                        $a = $this->object;
                        $a['tag'] = 'img';
                        $a['attribute'] = [
                            'src' => $contents->src,
                            'style' => 'width: 100%;'
                        ];
                        $b = $this->object;
                        $b['tag'] = 'div';
                        $b['attribute'] = [
                            'class' => 'carousel-caption d-none d-md-block',
                        ];

                        if(isset($contents->heading)) {

                            $heading = $this->object;
                            $heading['tag'] = 'h5';
                            $heading['child'][0]['text'] = $contents->heading;

                            array_push($b['child'], $heading);

                        }

                        if(isset($contents->description)) {

                            $description = $this->object;
                            $description['tag'] = 'p';
                            $description['child'][0]['text'] = $contents->description;

                            array_push($b['child'], $description);

                        }
                        
                        $carouselItem['child'][0] = $a;
                        $carouselItem['child'][1] = $b;
                        $carouseInner['child'][$i] = $carouselItem;

                        $i++;
                        // $string .= '<li data-target="#'.$d_components['id'].'" data-slide-to="'.$key.'" '. ($key == 0 ? ' class="active"' : '') . '></li>';
                    }

                $carouselControlLeft = $this->object;
                $carouselControlLeft['tag'] = 'a';
                $carouselControlLeft['attribute'] = [
                    'class' => 'carousel-control-prev',
                    'href' => '#'.$temp['html_id'],
                    'role' => 'button',
                    'data-slide' => 'prev',
                ];
                $carouselControlLeft['child'][0] = $this->object;
                $carouselControlLeft['child'][0]['tag'] = 'span';
                $carouselControlLeft['child'][0]['attribute'] = [
                    'class' => 'carousel-control-prev-icon',
                    'aria-hidden' => 'true',
                ];
                $carouselControlLeft['child'][1] = $this->object;
                $carouselControlLeft['child'][1]['tag'] = 'span';
                $carouselControlLeft['child'][1]['attribute'] = [
                    'class' => 'sr-only',
                ];
                $carouselControlLeft['child'][1]['child'][0]['text'] = 'Previous';

                $carouselControlRight = $this->object;
                $carouselControlRight['tag'] = 'a';
                $carouselControlRight['attribute'] = [
                    'class' => 'carousel-control-next',
                    'href' => '#'.$temp['html_id'],
                    'role' => 'button',
                    'data-slide' => 'next',
                ];
                $carouselControlRight['child'][0] = $this->object;
                $carouselControlRight['child'][0]['tag'] = 'span';
                $carouselControlRight['child'][0]['attribute'] = [
                    'class' => 'carousel-control-next-icon',
                    'aria-hidden' => 'true',
                ];
                $carouselControlRight['child'][1] = $this->object;
                $carouselControlRight['child'][1]['tag'] = 'span';
                $carouselControlRight['child'][1]['attribute'] = [
                    'class' => 'sr-only',
                ];
                $carouselControlRight['child'][1]['child'][0]['text'] = 'Previous';

                $carousel['child'][0] = $indicator;
                $carousel['child'][1] = $carouseInner;
                $carousel['child'][2] = $carouselControlLeft;
                $carousel['child'][3] = $carouselControlRight;
                $html_object['child'][0] = $carousel;
                // $string .= '<div id="'.$d_components['id'].'" class="'.$d_components['class'].' carousel slide" data-ride="carousel">';

                // print_r($content);exit;


                // print_r($html_object);
                // print_r($this->objectToHtml((object)$html_object));
                // exit;
            } elseif($temp->type_component_id == '2') {
                $html_object['tag'] = $content->type;
                $html_object['child'][0]['text'] = $content->value;
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '3') {
                $html_object['tag'] = $content->type;
                $html_object['child'][0]['text'] = $content->value;
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '4') {
                $html_object['tag'] = 'img';
                $html_object['attribute']['src'] = $content->src;
                // $html_object['attribute']['onclick'] = 'window.location.href="' . $content->src .'"';
                // $html_object['attribute']['target'] = '_blank';
                $html_object['attribute']['style'] = 'max-width: 100%';
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '5') {
                $html_object['tag'] = 'embed';
                $html_object['attribute']['src'] = $content->src;
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '6') {
                
                $e = 0;
                $html_object['tag'] = 'div';
                $html_object['attribute']['class'] = $temp->library_component;
                $html_object['attribute']['id'] = '';
                $slider_item_container = $this->object;
                $slider_item_container['tag'] = 'div';
                $slider_item_container['attribute']['class'] = 'slider-item-container '.$temp->html_class;
                $slider_item_container['attribute']['id'] = $temp->html_id;
                foreach($content as $l => $contents) {
                    $slider_item = $this->object;
                    $slider_item['tag'] = 'div';
                    $slider_item['attribute']['class'] = 'slider-item' .($l == 0 ? ' active' : '');
                    $slider_item['child'][0] = $this->object;
                    $slider_item['child'][0]['tag'] = 'img';
                    $slider_item['child'][0]['attribute']['src'] = $contents->src;
                    $slider_item['child'][1] = $this->object;
                    $slider_item['child'][1]['tag'] = 'div';
                    $slider_item['child'][1]['attribute']['class'] = 'slider-text-container';
                    $k = 0;
                    if(isset($contents->heading)) {
                        foreach($contents->heading as $m => $heading) {
                            $text_item = $this->object;
                            $text_item['tag'] = $heading->tag;
                            $text_item['attribute']['class'] = 'slider-heading';
                            $text_item['child'][0]['text'] = $heading->text;
                            $slider_item['child'][1]['child'][$k] = $text_item;
                            $k = $m;
                        }
                        $k += 1;
                    }
                    if(isset($contents->description)) {
                        foreach($contents->description as $m => $description) {
                            $text_item = $this->object;
                            $text_item['tag'] = $description->tag;
                            $text_item['attribute']['class'] = 'slider-description';
                            $text_item['child'][0]['text'] = $description->text;
                            $slider_item['child'][1]['child'][$k + $m] = $text_item;
                        }
                        if(isset($contents->additional) && count($contents->additional) > 0) {
                            foreach($contents->additional as $m => $additionals) {
                                if($m == 'slider') {
                                    $group = $this->object;
                                    $group['tag'] = 'div';
                                    $group['attribute']['class'] = '_additional-slider';
                                    $ul = $this->object;
                                    $ul['tag'] = 'ul';
                                    $ul['attribute']['class'] = '_indicator-additional-slider';
                                    foreach($additionals as $key => $slcontent) {
                                        $li = $this->object;
                                        $li['tag'] = 'li';
                                        $li['attribute']['target'] = 'additional-slider-'.$key;
                                        $li['child'][0] = $this->object;
                                        $li['child'][0]['tag'] = 'span';
                                        $li['child'][0]['child'][0]['text'] = $slcontent->indicator;
                                        array_push($ul['child'], $li);
                                    }
                                    $group['child'][0] = $ul;
                                    $cas = $this->object;
                                    $cas['tag'] = 'div';
                                    $cas['attribute']['class'] = '_content-additional-slider';
                                    foreach($additionals as $key => $slcontent) {
                                        $cs = $this->object;
                                        $cs['tag'] = 'div';
                                        $cs['attribute']['class'] = '_content-slider';
                                        $cs['attribute']['id'] = 'additional-slider-'.$e.'-'.$key;
                                        foreach($slcontent->content as $b => $con) {
                                            $cs['child'][$b] = $this->object;
                                            $cs['child'][$b]['tag'] = 'div';
                                            $cs['child'][$b]['attribute']['class'] = '_item-additional-slider '. ($b == 0 ? 'active' : '');
                                            $img = $this->object;
                                            $img['tag'] = 'img';
                                            $img['attribute']['src'] = $con->image;
                                            $cs['child'][$b]['child'][0] = $img;
                                            $text = $this->object;
                                            $text['tag'] = 'h5';
                                            $text['child'][0]['text'] = $con->text;
                                            $cs['child'][$b]['child'][1] = $text;
                                        }
                                        array_push($cas['child'], $cs);
                                    }
                                    $group['child'][1] = $cas;
                                    $e += 1;
                                    echo '<pre>'; print_r($additionals); echo '</pre>';
                                } else {
                                    $group = $this->object;
                                    $group['tag'] = 'div';
                                    $group['attribute']['class'] = '_'.$m.'-group';
                                    foreach($additionals as $n => $components) {
                                        $component = $this->object;
                                        $component['tag'] = isset($components->type) ? $components->type :'a';
                                        $component['attribute']['href'] = isset($components->href) ? $components->href : '';
                                        if($m == 'button') {
                                            $component['attribute']['class'] = '_btn';
                                        }
                                        $component['child'][0]['text'] = isset($components->value) ? $components->value : '';
                                        $group['child'][$n] = $component;
                                    }
                                }
                                array_push($slider_item['child'], $group);
                            }
                        }
                    }
                    $slider_item_container['child'][$l] = $slider_item;
                }
                $html_object['child'][0] = $slider_item_container;
                // print_r($html_object); exit;
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '7') {
                $html_object['tag'] = 'a';
                $html_object['attribute']['href'] = $content->href;
                $html_object['attribute']['class'] = '_btn '.$temp->html_class;
                $html_object['attribute']['id'] = $temp->html_id;
                $html_object['child'][0]['text'] = $content->value;
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '8') {
                $html_object['tag'] = 'a';
                $html_object['attribute']['href'] = $content->href;
                $html_object['attribute']['class'] = $temp->html_class;
                $html_object['attribute']['id'] = $temp->html_id;
                $html_object['child'][0]['text'] = $content->value;
                array_push($array, $html_object);
            } elseif($temp->type_component_id == '12') {
                $html_object['tag'] = 'div';
                $html_object['attribute']['class'] = '_card';
                $html_object['child'][0] = $this->object;
                $html_object['child'][0]['tag'] = 'img';
                $html_object['child'][0]['attribute']['style'] = 'width: 100%';
                $html_object['child'][0]['attribute']['src'] = $content->src;
                $html_object['child'][1] = $this->object;
                $html_object['child'][1]['tag'] = 'div';
                $html_object['child'][1]['attribute']['class'] = '_card-text-container';
                $html_object['child'][1]['child'][0] = $this->object;
                $html_object['child'][1]['child'][0]['tag'] = 'h4';
                $html_object['child'][1]['child'][0]['attribute']['class'] = '_card-heading';
                $html_object['child'][1]['child'][0]['child'][0]['text'] = $content->title;
                $html_object['child'][1]['child'][1] = $this->object;
                $html_object['child'][1]['child'][1]['tag'] = 'p';
                $html_object['child'][1]['child'][1]['attribute']['class'] = '_card-text';
                $html_object['child'][1]['child'][1]['child'][0]['text'] = $content->additional[0];
                $html_object['child'][1]['child'][2] = $this->object;
                $html_object['child'][1]['child'][2]['tag'] = 'p';
                $html_object['child'][1]['child'][2]['attribute']['class'] = '_card-text';
                // $html_object['child'][1]['child'][2]['child'][0]['text'] = $content->additional[1];
                array_push($array, $html_object);
                echo '<pre>'; print_r($content->additional); echo '</pre>';
            }
            // echo '<pre>'; print_r($content); echo '</pre>';
            \App\Components::where('id', $temp->id)
                ->update(['content' => json_encode($html_object)]);
            // echo json_encode($html_object);
            // echo '<br/>-----------<br/>';
        }
        // print_r($array);
    }

    public function previewObject() {
        
        $Components = new \App\Components;
        $Components = $Components
            ->get();

        $html = '';
        foreach($Components as $key => $temp) {
            $content = json_decode($temp->content);
            // echo '<pre>';print_r($content->child); echo '</pre>';
            $html .= $this->objectToHtml($content);
            // echo '<br/>------------<br/>';
        }
        echo $html;
        
    }

    public function objectToHtml($content) {
        $html = '';
        if(isset($content->tag)) {
            $html = '<'.$content->tag;
            if(count($content->attribute) > 0) {
                foreach($content->attribute as $attr => $val) {
                    if($content->tag == 'img' && $attr == 'src') {
                        if(strpos($val ,'uploads/image') !== false) 
                            $html .= ' '.$attr.'=\''.url($val).'\'';
                        else 
                            $html .= ' '.$attr.'=\''.url('uploads/image/'.$val).'\'';
                    } else
                        $html .= ' '.$attr.'=\''.$val.'\'';
                }
            }
            $html .= '>';
            if(count($content->child) > 0) 
                foreach($content->child as $key => $temp) 
                    $html .= $this->objectToHtml($temp);
            $html .= '</'.$content->tag.'>';
        } elseif(isset($content->text))
            $html .= $content->text;
        return $html;
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
        $intepreter['body']['navbar'] .= '<a href="/beranda"><img src="'.$html['body']['navbar']['logo'].'" class="_site-logo"></a>';
        $intepreter['body']['navbar'] .= '<div class="burger-menu _show-mobile">';
        $intepreter['body']['navbar'] .= '<i class="fa fa-list"></i>';
        $intepreter['body']['navbar'] .= '</div>';    
        $intepreter['body']['navbar'] .= '<div class="_menu-link _show-desktop"">';
        $intepreter['body']['navbar'] .= '<ul>';

        if(count($html['body']['navbar']['data']) > 0)
            foreach($html['body']['navbar']['data'] as $key => $temp) 
                $intepreter['body']['navbar'] .= '<li><a href="'.$temp['url'].'">'.$temp['val'].'</a></li>';

        $intepreter['body']['navbar'] .= '</ul>';
        $intepreter['body']['navbar'] .= '</div>';
        $intepreter['body']['navbar'] .= '</div>';
        $intepreter['body']['navbar'] .= '</div>';

        
        $intepreter['body']['footer'] = '';
        $intepreter['body']['footer'] .= '<div class="_footer _section ">';
        $intepreter['body']['footer'] .= '<div class="_container _width-d-1000">';
        $intepreter['body']['footer'] .= '<div class="_grid grid-3">';
        $intepreter['body']['footer'] .= '<img src="'.$html['body']['footer']['logo'].'" class="_site-logo">';
        $intepreter['body']['footer'] .= '<p class="_site-contact_detail">'.$html['body']['footer']['contact_detail'].'</p>';
        $intepreter['body']['footer'] .= '</div>';
        $intepreter['body']['footer'] .= '<div class="_grid grid-9">';
        $intepreter['body']['footer'] .= '<div class="_menu-link">';
        $intepreter['body']['footer'] .= '<ul>';
        
        if(count($html['body']['footer']['data']) > 0)
            foreach($html['body']['footer']['data'] as $key => $temp) 
                $intepreter['body']['footer'] .= '<li><a href="'.$temp['url'].'">'.$temp['val'].'</a></li>';
                
        $intepreter['body']['footer'] .= '</ul>';
        $intepreter['body']['footer'] .= '</div>';
        $intepreter['body']['footer'] .= '</div>';
        $intepreter['body']['footer'] .= '<div class="_grid grid-12 _text-center">';
        $intepreter['body']['footer'] .= $html['body']['footer']['copyright'];
        $intepreter['body']['footer'] .= '</div>';
        $intepreter['body']['footer'] .= '</div>';
        $intepreter['body']['footer'] .= '</div>';

        $intepreter['body']['section'] = '';
        if(!empty($sections)) 
            foreach($sections as $key => $d_sections) {
                $intepreter['body']['section'] .= '<div id="'.$d_sections['id'].'" class="_section '.$d_sections['class'].'">';
                $intepreter['body']['section'] .= '<div class="_container">';
                if(!empty($d_sections['grids']))
                    foreach($d_sections['grids'] as $key => $d_grids) {
                        $intepreter['body']['section'] .= '<div class="_grid grid-'.$d_grids['length'].' '.$d_grids['class'].'">';
                        // $intepreter['body']['section'] .= '<div style="position: absolute;top: 0px;right: 0px;z-index: 20;background-color: #aaa;font-size: 14px;padding: 10px 20px;color: #fff;">'.
                        // 'Section ID : '. $d_sections['pk'].'<br/>'.
                        // 'Grid ID : '. $d_grids['pk'].
                        // '</div>';
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
        $intepreter['footer']['javascript'] .= 
        '<script>
            $(document).ready(function(){
                var URL = window.location.href;
                var navbarMenu = $("._menu-link ul li").find("a");
                $("._menu-link ul li").removeClass("active");
                console.log(URL);
                for (const [key, value] of Object.entries(navbarMenu)) {
                    const subject = value.href;
                    if(subject && URL.match(subject + ".*")){
                        $("._menu-link ul li").eq(key).addClass("active");
                    }
                }
            });
            $(".burger-menu").click(function (){
                if($("._show-desktop").css("display") == "none"){
                    $("._menu-link").css("display","block");
                }else if($("._menu-link").css("display") == "block"){
                    $("._menu-link").css("display","none");
                }
            });
        </script>';
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
        $string .= '<img src="'.url('uploads/image/').'/'.$d_components['data']['src'].'" id="'.$d_components['id'].'" class="'.$d_components['class'].'" style="width: 100%;"/>';
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
                $string .= '<img src="'.url('uploads/image/').'/'.$arr_d_data['src'].'">';
                $string .= '<h5 class="slider-heading">'.$arr_d_data['heading'].'</h5>';
                $string .= '<p class="slider-description">'.$arr_d_data['description'].'</p>';
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
