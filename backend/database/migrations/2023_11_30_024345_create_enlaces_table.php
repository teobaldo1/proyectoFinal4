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
        Schema::create('enlaces', function (Blueprint $table) {
            $table->id('id_enlace');
            $table->unsignedBigInteger('id_pagina');
            $table->unsignedBigInteger('id_rol');
            $table->string('descripcion');
            $table->string('fechaCreacion');
            $table->string('fechaModificacion');
            $table->string('usuarioCreacion');
            $table->string('usuarioModificacion');
           $table->foreign('id_pagina')->references('id_pagina')->on('paginas');
            $table->foreign('id_rol')->references('id_rol')->on('roles');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('enlaces');
    }
};
