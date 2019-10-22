<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sections extends Model
{

    protected $fillable = ['name', 'html_id', 'html_class', 'sequence', 'pages', 'status'];

    public function m_pages() {
        return $this->belongsTo('App\Pages', 'pages');
    }

    public function d_grids() {
        return $this->hasMany('App\Grids', 'sections');
    }

}
