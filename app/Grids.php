<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grids extends Model
{

    protected $fillable = ['name', 'html_id', 'html_class', 'length', 'sequence', 'sections'];

    public function m_sections() {
        return $this->belongsTo('App\Sections', 'sections');
    }

    public function d_components() {
        return $this->hasMany('App\Components', 'grids');
    }
    
}
