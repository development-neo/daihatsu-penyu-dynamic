<?php

namespace App;

use Request;
use Illuminate\Database\Eloquent\Model;

class Projects extends Model
{
    
    protected $fillable = ['name', 'status'];

    public function d_publics() {
        return $this->hasMany('App\Publics', 'projects', 'id');
    }

    public static function active() {
        return SELF::where('status', 1)
            ->first();
    }

    public function render() {

        echo '<style type="text/css">
            ._container { width: 1000px; margin: 0px auto; display: block; }
            ._container ._section { width: 100%; display: table; padding: 20px 10px; border: .5px #aaa solid; }
            ._container ._section ._grid{ float: left; padding: 10px 0px; border: .5px #bbb solid; diplay: inherit; }
            ._container ._section .grid-12 { width: 100%; }
            ._container ._section .grid-11 { width: 91.666666666667%; }
            ._container ._section .grid-10 { width: 83.333333333333%; }
            ._container ._section .grid-9  { width: 75%; }
            ._container ._section .grid-8  { width: 66.666666666666%; }
            ._container ._section .grid-7  { width: 58.333333333333%; }
            ._container ._section .grid-6  { width: 50%; }
            ._container ._section .grid-5  { width: 41.666666666667%; }
            ._container ._section .grid-4  { width: 33.333333333333%; }
            ._container ._section .grid-3  { width: 25%; }
            ._container ._section .grid-2  { width: 16.666666666667%; }
            ._container ._section .grid-1  { width:  8.333333333333%; }
        </style>';

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
            $data = [
                'name' => $html->url,
                'meta' => $html->meta,
                'information' => '',
                'body' => [
                    'sections' => []
                ]
            ];
            
            $_code = '<body>';
            $_code .= '<div class="_container">';
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
                        $_code .= '<div class="_section">';
                        $_code .= $list_sections->name.'<br/>';
                        $grids = [];
                        if($list_sections->d_grids()->get()) {
                            $d_grids = $list_sections
                                ->d_grids()
                                ->orderBy('sequence')
                                ->get();
                            foreach($d_grids as $list_grids) {
                                $_code .= '<div class="_grid grid-'.$list_grids->length.'">';
                                $_code .= $list_grids->length;
                                $components = [];
                                $html_component = '';
                                array_push($grids, [
                                    'length' => $list_grids->length,
                                    'id' => $list_grids->html_id,
                                    'class' => $list_grids->class,
                                    'components' => $components,
                                ]);
                                $_code .= '</div>';
                            }
                        }
                        array_push($data['body']['sections'], [
                            'name' => $list_sections->name,
                            'id' => 'id',
                            'class' => 'class',
                            'grids' => $grids,
                        ]);
                        $_code .= '</div>';
                    }
                }
            }
            $_code .= '</div></body>';
        }
        echo $_code;
        exit;
        $html = $project;
        return $html;

    }

}
