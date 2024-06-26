<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Components extends Model
{

    protected $fillable = ['name', 'html_id', 'html_class', 'content', 'library_component', 'type_component_id', 'sequence', 'grids'];

    public function m_grids() {
        return $this->belongsTo('App\Grids', 'grids');
    }

    public function m_type_component() {
        return $this->belongsTo('App\TypeComponent', 'type_component_id', 'id');
    }

    public function m_library_component() {
        return $this->belongsTo('App\LibraryComponents', 'library_component', 'name');
    }

}
