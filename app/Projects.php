<?php

namespace App;

use Request;
use Illuminate\Database\Eloquent\Model;

class Projects extends Model
{
    
    protected $fillable = ['name', 'status'];

    public function d_css() {
        return $this->hasMany('App\Css', 'projects', 'id');
    }

    public function d_publics() {
        return $this->hasMany('App\Publics', 'projects', 'id');
    }

    public static function active() {
        return SELF::where('status', 1)
            ->first();
    }

    public function array_initialization() {

        // $array = (object) [
        //     'src' =>'IMG-20180327-WA0010.jpg',
        //     'href' =>'https://wallpapermemory.com/uploads/200/mount-bromo-wallpaper-hd-1920x1200-320096.jpg',
        //     'title' =>'This is fucking title',
        //     'additional' => [
        //         'This is fucking additional text',
        //         'This is fucking additional text with long description that so funny to show.',
        //         'This is date',
        //         'This is other what do you want to write',
        //     ],
        // ];

        // dd(json_encode($array));
        // exit;

        $data = [
            'name' => '',
            'meta' => '',
            'css' => '',
            'information' => '',
            'body' => [
                'navbar' => [],
                'sections' => [],
                'footer' => [],
            ]
        ];

        $project = $this->where('status', 1)->first();
        $public = $project->d_publics()->get();

        $navbar = [
            'logo' => 'https://daihatsu.co.id/images/revamp2017/daihatsu-logo.svg',
            'data' => [],
        ];
        foreach($public as $key => $temp) {
            if($temp->parent == null && $temp->status == 1) 
                array_push($navbar['data'], [
                    'val' => $temp->name,
                    'url' => url($temp->url),
                ]);
        }

        $footer = [
            'logo' => 'https://daihatsu.co.id/images/revamp2017/daihatsu-logo.svg',
            'data' => [],
            'contact_detail' => 'Jl Danau Sunter Kav 6 -10 <br/>Telp: (+62 21) 819 4807 <br/>Email: me@daihatsu.co.id <br/>Contact Center:  (+62 21) 1500 709',
            'copyright' => 'Copyright ©  2010-2019 Daihatsu Penyu Untuk Indonesia. All rights reserved.'
        ];
        foreach($public as $key => $temp) {
            if($temp->parent == null && $temp->status == 1) 
                array_push($footer['data'], [
                    'val' => $temp->name,
                    'url' => url($temp->url),
                ]);
        }

        $data['body']['navbar'] = $navbar;
        $data['body']['footer'] = $footer;

        $segment = \Request::segments();

        $html = null;
        if(!empty($segment))
            foreach($segment as $key => $temp)
                foreach($public as $k => $publics)
                    if($temp == $publics->url)
                        if($html == null)
                            $html = $publics;
                        else
                            if($html['id'] == $publics->parent)
                                $html = $publics;
                                
        if($html != null) {
            $css = [];
            if($project->d_css()->first()) {
                $css = $project->d_css()->first()->toArray()['code'];

                if(isset($_GET['css_coder'])) {
                    $string = '._navbar{position:fixed;left:0;top:0;width:100%;background-color:#fff;z-index:99999999;padding:10px 0;box-shadow:0 1px 5px #d3d3d3}._navbar ._menu-link{float:right}._navbar ._menu-link ul{width:100%;padding:0;list-style:none;display:table;margin:0}._navbar ._menu-link ul li{float:left}._navbar ._menu-link ul li a{text-decoration:none;color:#333;padding:8px 10px;display:block;text-transform:capitalize}._footer ._menu-link{float:right}._footer ._menu-link ul{width:100%;padding:0;list-style:none;display:table;margin:0}._footer ._menu-link ul li{float:left}._footer ._menu-link ul li a{text-decoration:none;color:#333;padding:8px 10px;display:block;text-transform:capitalize}._footer ._container{border-top:.5px #aaa solid}._footer ._site-logo,._navbar ._site-logo{width:120px;display:block;float:left}._footer ._site-contact_detail{float:left;margin:10px 0;color:#666}._text-center{text-align:center}._text-right{text-align:right}._float-right{float:right!important}._container{width:1000px;margin:0 auto;display:block}._section ._container{display:table;padding:20px 10px}._container-margin-20 ._container{margin-top:20px}._section ._container ._grid{float:left;padding:10px 0;display:inherit;position:relative}._section ._container .grid-12{width:100%}._section ._container .grid-11{width:91.666666666667%}._section ._container .grid-10{width:83.333333333333%}._section ._container .grid-9{width:75%}._section ._container .grid-8{width:66.666666666666%}._section ._container .grid-7{width:58.333333333333%}._section ._container .grid-6{width:50%}._section ._container .grid-5{width:41.666666666667%}._section ._container .grid-4{width:33.333333333333%}._section ._container .grid-3{width:25%}._section ._container .grid-2{width:16.666666666667%}._section ._container .grid-1{width:8.333333333333%}._btn{padding:5px 17px;display:block;width:fit-content;border:.5px #2f94e0 solid;border-radius:9px;color:#fff;background-color:#2f94e0}._btn:hover{text-decoration:none;color:#2f94e0;background-color:#fff}._galery-image img{width:25%!important;float:left;padding:5px;height:150px;object-fit:cover;object-position:center}._padding-10{padding:10px}._berita-berita-lain img{width:50%!important;float:left}._berita-berita-lain h6{height:80px}._lokasi-image img{width:33%!important;float:left;padding:3px}._galery-video{width:50%!important;float:left;padding:5px}._galery-video-full{padding:5px}._container-width-full ._container{width:100%!important;padding:20px 0}._container-width-full ._container ._grid{width:100%!important;padding:20px 0}._section ._container ._grid-1000{width:1000px!important;float:unset;margin:0 auto}body{padding-top:60px}._padding-less-container-grid ._container{padding:0!important}._padding-less-container-grid ._container ._grid{padding:0!important}._social-media-badge{position:fixed;z-index:1;top:35%;width:calc((100% - 980px)/ 2);display:block;text-align:center}._social-media-badge ._container{position:absolute;width:100%}._font-permanent-marker{font-family:"Permanent Marker",cursive;color:#2679bf}._font-ubuntu-marker{font-family:Ubuntu,sans-serif}._font-ubuntu-marker-bold{font-family:Ubuntu,sans-serif;font-weight:700}._section-konservasi-overview .grid-2{border:.5px #aaa solid;border-bottom:none;border-top:none;border-right:none!important}._section-konservasi-overview .grid-2:nth-child(2){border:none!important}._icon-alignment i{margin:0 15px 0 10px}._section-konservasi-overview .grid-2:last-child{border-right:none!important}.carousel-control-next{position:absolute;bottom:15px;right:15px;border:5px solid;padding:10px;width:50px;height:50px;border-radius:15pc;top:unset;background-color:#fff}.carousel-control-prev{position:absolute;bottom:15px;right:75px;border:5px solid;padding:10px;width:50px;height:50px;border-radius:15pc;top:unset;left:unset}._beranda-section1{background-image:url(/uploads/image/section1-beranda.png);background-position:center;background-size:cover;height:500px}._beranda-section2{background-image:url(/uploads/image/section2-beranda.png);background-size:100%;background-repeat:no-repeat;background-position-y:500px}._beranda-section3{background-image:url(/uploads/image/section3-beranda.png);background-position:right;background-size:250px;background-repeat:no-repeat;background-position-x:800px}._beranda-section4{background-image:url(/uploads/image/section4-beranda.png);background-position:left;background-size:250px;background-repeat:no-repeat;background-position-x:200px}._beranda-section-7{background-image:url(/uploads/image/section-galery-beranda.png);background-position:center;background-size:cover;background-repeat:no-repeat}.carousel-indicators{visibility:hidden}._icon-social-badge-instagram{color:#aa3a9e;border:1px solid;padding:7px 0 0 0;border-radius:15pc;width:33px;height:33px;text-decoration:none}._icon-social-badge-instagram:hover{color:#882d7e;text-decoration:none}._icon-social-badge-facebook{border:1px solid;padding:8px 0 0 0;border-radius:15pc;width:33px;height:33px;text-decoration:none}._icon-social-badge-facebook:hover{text-decoration:none}._icon-social-badge-twitter{color:#00acee;border:1px solid;border-radius:15pc;width:33px;height:33px;padding:7px 0 0 0;text-decoration:none}._icon-social-badge-twitter:hover{color:#0c8cbd;text-decoration:none}._icon-social-badge-youtube{color:red;width:33px;height:33px;border:1px solid;border-radius:15pc;padding:6px 0 0 0;text-decoration:none}._icon-social-badge-youtube:hover{color:#b50606;text-decoration:none}._berita-image-2 img{width:100%;height:185px;background-size:cover}._breadcrumb{margin:0;padding:0;margin-top:-10px;margin-bottom:0;font-size:14px}._breadcrumb a{color:#000}._breadcrumb .fa{margin:0 5px}._accordion-icon .icon-accordion{margin-left:680px;border:1px solid;padding:0 5px;border-radius:15px}._border ._container{border:.5px solid #000;margin-bottom:30px}._shadow ._container{box-shadow:0 1px 10px #d3d3d3!important;margin-bottom:30px;border-radius:5px}._accordion-icon .card{border-radius:0;border:unset;border-bottom:1px solid rgba(0,0,0,.1)!important;background-color:#fff}._accordion-icon .card .card-header{background-color:#fff}._accordion-icon .card .card-header .mb-0{border-bottom:1px solid #fff}._accordion-icon .card .card-header .mb-0 .btn{color:#000}._konservasi-kami-content{margin-top:15%}:target{padding-top:70px;margin-top:-70px}'; 
                    // echo $string; exit; 
                    $explode = explode('}', $string);
                    foreach($explode as $key => $temp) {
                        if($temp != '') {
                            echo explode('{', $temp)[0]; echo '{ }<br/>';
                        }
                    }
                    exit;
                }
                $cssResponsive = $project->d_css()->first()->d_cssResponsive()->get()->toArray();
                foreach($cssResponsive as $key => $temp) {
                    $css .= '@media only screen and (max-width: '.$temp['max-width'].'px) and (min-width: '.$temp['min-width'].'px)  {';
                    $css .= $temp['code'];
                    $css .= '}';
                }
                // echo $css; exit;
                // dd($cssResponsive);
            }
            
            $data['name'] = $html->url;
            $data['meta'] = $html->meta;
            $data['css'] = $css;
            $data['javascript'] = '';
            
            if($html->m_pages()->first()) {
                $pages = $html
                    ->m_pages()
                    ->first();
                $data['information'] = [
                    'features_images' => $pages->features_images,
                    'description' => $pages->description,
                ];
                if($pages->d_sections()->get()) {
                    $d_sections = $pages
                        ->d_sections()
                        ->orderBy('sequence')
                        ->get();
                    foreach($d_sections as $list_sections) {
                        $grids = [];
                        if($list_sections->d_grids()->get()) {
                            $d_grids = $list_sections
                                ->d_grids()
                                ->orderBy('sequence')
                                ->get();
                            foreach($d_grids as $list_grids) {
                                $components = [];
                                if($list_grids->d_components()->get()) {
                                    $d_components = $list_grids
                                        ->d_components()
                                        ->orderBy('sequence')
                                        ->get();
                                    foreach($d_components as $list_components) {

                                        if($list_components->m_library_component()->first()) {
                                            $data['css'] .= $list_components->m_library_component()->first()->css;
                                            $data['javascript'] .= $list_components->m_library_component()->first()->javascript;
                                        }
                                            // dd($list_components->m_library_component()->first()->css);
                                            // echo $list_components->m_library_component()->first(); echo '<br/>';
                                        array_push($components, [
                                            'pk' => $list_components->id,
                                            'type' => $list_components->m_type_component()->first()->name,
                                            'id' => $list_components->html_id,
                                            'class' => $list_components->html_class,
                                            'library_component' => $list_components->library_component,
                                            'data' => $list_components->content != '' ? json_decode($list_components->content) : '',
                                        ]);
                                    }
                                }
                                array_push($grids, [
                                    'pk' => $list_grids->id,
                                    'length' => $list_grids->length,
                                    'id' => $list_grids->html_id,
                                    'class' => $list_grids->html_class,
                                    'components' => $components,
                                ]);
                            }
                        }
                        array_push($data['body']['sections'], [
                            'pk' => $list_sections->id,
                            'name' => $list_sections->name,
                            'id' => $list_sections->html_id,
                            'class' => $list_sections->html_class,
                            'grids' => $grids,
                        ]);
                    }
                }
            }
        }
        // dd($data);
        // exit;
        return $data;
    }

}

