<?php

namespace App\Models;

use App\Traits\Uuid;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Platform extends Model
{
    use HasFactory, Uuid;

    public $timestamps = true;
    protected $hidden = ['id'];

    protected $table = 'platform';

    protected $fillable = [
        'uuid',
        'platform_name',
        'image',
        'url',
        'description',
    ];

    public function ratings()
    {
        return $this->hasMany(RatingsPlatform::class, 'platform_id', 'uuid');
    }
}
