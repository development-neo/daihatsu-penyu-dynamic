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

}
