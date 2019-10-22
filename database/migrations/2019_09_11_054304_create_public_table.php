<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePublicTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('publics'))
            Schema::create('publics', function (Blueprint $table) {
                $table->increments('id');
                $table->string('name', 100);
                $table->string('url', 100);
                $table->text('meta', 2000)->nullable();
                $table->integer('parent')->nullable();
                $table->integer('pages')->nullable();
                $table->integer('project')->nullable();
                $table->boolean('status')->default(1);
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
        Schema::dropIfExists('public');
    }
}
