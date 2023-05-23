<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCurrenciesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('currencies', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('code')->nullable();
            $table->string('logo')->nullable();
            $table->string('unit')->nullable();
            $table->string('sell')->nullable();
            $table->string('last_sell')->nullable();
            $table->string('buy')->nullable();
            $table->string('last_buy')->nullable();
            $table->integer('sort')->nullable();

            $table->boolean('enable')->nullable()->default(true);
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
        Schema::dropIfExists('currencies');
    }
}
