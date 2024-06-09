<?php

namespace App\Models;

use App\Traits\Uuid;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RatingsPlatfrom extends Model
{
    use HasFactory, Uuid;

    public $timestamps = true;
    protected $hidden = ['id'];

    protected $table = 'ratings_platform';

    protected $fillable = [
        'uuid',
        'user_id',
        'platform_id',
        'topik_kursus',
        'durasi_kursus',
        'biaya_kursus',
        'level_kursus',
        'fleksibilitas_waktu',
        'bahasa_pengantar',
        'metode_pembelajaran',
        'kualifikasi_dan_reputasi_instruktur',
        'kualitas_materi_kursus',
        'dukungan_dan_interaksi',
        'overall',
    ];

    public function platform()
    {
        return $this->belongsTo(Platform::class, 'platform_id', 'uuid');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'uuid');
    }
}
