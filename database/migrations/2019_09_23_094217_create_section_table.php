<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSectionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('sections'))
            Schema::create('sections', function (Blueprint $table) {
                $table->increments('id');
                $table->string('name');
                $table->string('html_id', 40)->nullable();
                $table->string('html_class')->nullable();
                $table->integer('sequence')->default(0);
                $table->integer('pages');
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
        Schema::dropIfExists('section');
    }
}
