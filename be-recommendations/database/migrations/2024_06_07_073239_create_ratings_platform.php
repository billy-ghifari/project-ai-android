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
        Schema::create('ratings_platform', function (Blueprint $table) {
            $table->id('id');
            $table->uuid('uuid');
            $table->char('user_id');
            $table->char('platform_id');
            $table->integer('topik_kursus');
            $table->integer('durasi_kursus');
            $table->integer('biaya_kursus');
            $table->integer('level_kursus');
            $table->integer('fleksibilitas_waktu');
            $table->integer('bahasa_pengantar');
            $table->integer('metode_pembelajaran');
            $table->integer('kualifikasi_dan_reputasi_instruktur');
            $table->integer('kualitas_materi_kursus');
            $table->integer('dukungan_dan_interaksi');
            $table->integer('overall');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ratings_platform');
    }
};
