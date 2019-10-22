<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComponentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('components'))
            Schema::create('components', function (Blueprint $table) {
                $table->increments('id');
                $table->string('html_id', 40)->nullable();
                $table->string('html_class')->nullable();
                $table->text('content');
                $table->string('library_component')->nullable();
                $table->integer('type_component');
                $table->integer('sequence')->default(0);
                $table->integer('grids');
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
        Schema::dropIfExists('component');
    }
}
