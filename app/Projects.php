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

        // $array = (object)[
        //     'type' => 'h2',
        //     'value' => 'tentang penyu',
        // ];

        // dd(json_encode($array));
        // exit;

        $project = $this->where('status', 1)->first();
        $public = $project->d_publics()->get();

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
            $data = [
                'name' => $html->url,
                'meta' => $html->meta,
                'css' => $css,
                'information' => '',
                'body' => [
                    'sections' => []
                ]
            ];
            
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
                                        array_push($components, [
                                            'type' => $list_components->m_type_component()->first()->name,
                                            'id' => $list_components->html_id,
                                            'class' => $list_components->html_class,
                                            'library_component' => $list_components->library_component,
                                            'data' => $list_components->content != '' ? json_decode($list_components->content) : '',
                                        ]);
                                    }
                                }
                                array_push($grids, [
                                    'length' => $list_grids->length,
                                    'id' => $list_grids->html_id,
                                    'class' => $list_grids->html_class,
                                    'components' => $components,
                                ]);
                            }
                        }
                        array_push($data['body']['sections'], [
                            'name' => $list_sections->name,
                            'id' => 'id',
                            'class' => 'class',
                            'grids' => $grids,
                        ]);
                    }
                }
            }
        }
        // echo '<pre>';
        // print_r($data); exit;
        
        return $data;
    }

}

