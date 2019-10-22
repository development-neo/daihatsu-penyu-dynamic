<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('pages'))
            Schema::create('pages', function (Blueprint $table) {
                $table->increments('id');
                $table->string('name', 100);
                $table->string('features_images', 100)->nullable();
                $table->string('description', 100)->nullable();
                $table->string('type')->default('index');
                $table->integer('group')->nullable();
                $table->integer('parent')->nullable();
                $table->boolean('status')->default(1);
                $table->datetime('published_at');
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
        Schema::dropIfExists('page');
    }
}
