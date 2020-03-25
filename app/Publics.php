<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publics extends Model
{

    protected $table = 'publics';

    protected $fillable = ['name', 'url', 'meta', 'parent', 'pages', 'projects', 'status'];

    public function m_projects() {
        return $this->belongsTo('App\Projects', 'projects', 'id');
    }

    public function m_pages() {
        return $this->hasMany('App\Pages', 'id', 'pages');
    }
    
    public function my_child() {
        return $this->hasMany('App\Publics', 'parent', 'id');
    }
    
    public function my_parent() {
        return $this->belongsTo('App\Publics', 'parent', 'id');
    }

    public function public_url() {
        // $my_parent = $this->my_child()->get();
        // dd($my_parent);
        if($this->parent != '' && $this->parent != null) {
            return $this->my_parent()->first()->url . '/' . $this->url;
        }
        else
            return $this->url;
    }

}
