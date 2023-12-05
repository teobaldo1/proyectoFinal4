<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('bitacoras', function (Blueprint $table) {
            $table->id('id_bitacora');
            $table->string('bitacora');
            $table->unsignedBigInteger('id_usuario');
            $table->string('fecha');
            $table->string('hora');
            $table->string('ip');
            $table->string('so');
            $table->string('navegador');
            $table->string('usuario');
            $table->foreign('id_usuario')->references('id')->on('usuarios');
                $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bitacoras');
    }
};
