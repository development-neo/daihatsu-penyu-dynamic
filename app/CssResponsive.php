<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CssResponsive extends Model
{

    protected $table = 'css_responsive';

    protected $fillable = ['css', 'code', 'max-width', 'min-width'];

}
