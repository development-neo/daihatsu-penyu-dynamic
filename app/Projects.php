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
        //     [
        //         'heading' => [
        //             'type' => 'h2',
        //             'value' => 'Lorem Ipsum Dolor Sit Amet',
        //         ],
        //         'body' => [
        //             'value' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        //         ],
        //     ],
        //     [
        //         'heading' => [
        //             'type' => 'h2',
        //             'value' => 'Lorem Ipsum Dolor Sit Amet',
        //         ],
        //         'body' => [
        //             'value' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        //         ],
        //     ],
        //     [
        //         'heading' => [
        //             'type' => 'h2',
        //             'value' => 'Lorem Ipsum Dolor Sit Amet',
        //         ],
        //         'body' => [
        //             'value' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        //         ],
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
            if($project->d_css()->first())
                $css = $project->d_css()->first()->toArray()['code'];
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

