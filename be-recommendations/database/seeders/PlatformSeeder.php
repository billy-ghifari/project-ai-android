<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Platform;

class PlatformSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $platforms = [
            [
                'platform_name' => 'BuildwithAngga',
                'image' => 'path/to/image1.jpg',
                'url' => 'https://buildwithangga.com',
                'description' => 'Description for BuildwithAngga',
            ],
            [
                'platform_name' => 'Udemy',
                'image' => 'path/to/image2.jpg',
                'url' => 'https://udemy.com',
                'description' => 'Description for Udemy',
            ],
            [
                'platform_name' => 'Coursera',
                'image' => 'path/to/image3.jpg',
                'url' => 'https://coursera.org',
                'description' => 'Description for Coursera',
            ],
            [
                'platform_name' => 'Dicoding',
                'image' => 'path/to/image4.jpg',
                'url' => 'https://dicoding.com',
                'description' => 'Description for Dicoding',
            ],
            [
                'platform_name' => 'Progate',
                'image' => 'path/to/image5.jpg',
                'url' => 'https://progate.com',
                'description' => 'Description for Progate',
            ],
            [
                'platform_name' => 'Codepolitan',
                'image' => 'path/to/image6.jpg',
                'url' => 'https://codepolitan.com',
                'description' => 'Description for Codepolitan',
            ],
        ];

        foreach ($platforms as $platform) {
            Platform::create($platform);
        }
    }
}
