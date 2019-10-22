<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGridTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('grids'))
            Schema::create('grids', function (Blueprint $table) {
                $table->increments('id');
                $table->string('html_id', 40);
                $table->string('html_class');
                $table->tinyInteger('length');
                $table->integer('sequence');
                $table->integer('sections');
                $table->timestamps();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('grid');
    }
}
