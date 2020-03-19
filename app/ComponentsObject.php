<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ComponentsObject extends Model
{

    protected $table = 'components_object';

    protected $fillable = ['name', 'html_id', 'html_class', 'content', 'library_component', 'type_component', 'sequence', 'grids'];

    public function m_grids() {
        return $this->belongsTo('App\Grids', 'grids_id');
    }

    public function m_type_component() {
        return $this->belongsTo('App\TypeComponent', 'type_component_id', 'id');
    }

    public function m_library_component() {
        return $this->belongsTo('App\LibraryComponents', 'library_component', 'name');
    }

}
