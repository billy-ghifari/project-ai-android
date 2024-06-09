<?php

namespace Database\Seeders;

use App\Models\RatingsPlatfrom;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class RatingsPlatformSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {

        // Daftar user_id dan platform_id yang ditentukan
        $user_ids = [
            '603456cb-024e-4fbf-90fe-c366507b1682',
            'aa7ee9b2-a412-4aaf-bb71-aa25b689a770',
            '33f2be8f-7db9-44dc-af9b-9ce93d7c603d',
            '2909adea-5c1f-4995-a5d4-c3db6688a7fd',
            '0ed2da79-e31a-4ba2-9be7-8440fd784c5d',
            'da1ceaee-c385-405b-a3d4-b40a3fcc9cde',
            '5d5beae6-d123-40d1-979a-84604b825780',
            'd1fbb945-747f-4c7b-bdd9-b660d38708b0',
            'f2b00147-cebc-400a-9db8-b88d47ee7fd3',
            '9a591abc-e9ce-4fa8-a3a2-8fff47893bab',
            'b421f13f-d0cb-4442-b327-ee22bf6d8535',
            '3176072b-80b4-41ad-b8b9-153fa80a1f13',
            '2a41b770-bb0c-48b4-8171-822cf0273a10',
            'a2f818da-d6d1-4516-8867-a170a0c33df6',
            'c52b1727-cdf0-4ecb-bfba-404d9ba33456',
            'be2b060c-b97b-46d4-81ee-8a027e9fe283',
            'ec5ac8fe-2e7a-4f7d-af7f-3b8da2c0f02e',
            '6bc7bbe3-6501-4851-8432-c5aefc515d87',
            '936ca02e-2a24-4dae-baa3-4f7d0084fbb6',
        ];

        $platform_ids = [
            '0dda816e-75ef-4d28-862d-3d38be7651d4',
            'dcc7c6c3-232b-4b6c-8ecb-5ed988e2a203',
            'ebf3495f-091a-45b1-bba7-9b8f75fb5df4',
            'f564fc16-bd58-4794-80da-0d4a493048c6',
            '4900556b-8b02-4542-b6a2-47d182d43932',
        ];

        // Generate ratings for each user_id and platform_id
        foreach ($user_ids as $user_id) {
            foreach ($platform_ids as $platform_id) {
                RatingsPlatfrom::create([
                    'user_id' => $user_id,
                    'platform_id' => $platform_id,
                    'topik_kursus' => rand(1, 5),
                    'durasi_kursus' => rand(1, 5),
                    'biaya_kursus' => rand(1, 5),
                    'level_kursus' => rand(1, 5),
                    'fleksibilitas_waktu' => rand(1, 5),
                    'bahasa_pengantar' => rand(1, 5),
                    'metode_pembelajaran' => rand(1, 5),
                    'kualifikasi_dan_reputasi_instruktur' => rand(1, 5),
                    'kualitas_materi_kursus' => rand(1, 5),
                    'dukungan_dan_interaksi' => rand(1, 5),
                    'overall' => rand(1, 5),
                ]);
            }
        }


        // $ratings = [
        //     [
        //         'user_id' => 'cb30a223-1fbc-4298-a5c8-d5ba8541b9f8',
        //         'platform_id' => '082f535f-b17f-4be2-b723-2304180edb9e',
        //         'topik_kursus' => 3,
        //         'durasi_kursus' => 5,
        //         'biaya_kursus' => 5,
        //         'level_kursus' => 4,
        //         'fleksibilitas_waktu' => 5,
        //         'bahasa_pengantar' => 3,
        //         'metode_pembelajaran' => 3,
        //         'kualifikasi_dan_reputasi_instruktur' => 5,
        //         'kualitas_materi_kursus' => 5,
        //         'dukungan_dan_interaksi' => 5,
        //         'overall' => 5,
        //     ],
        //     [
        //         'user_id' => '603456cb-024e-4fbf-90fe-c366507b1682',
        //         'platform_id' => '082f535f-b17f-4be2-b723-2304180edb9e',
        //         'topik_kursus' => 3,
        //         'durasi_kursus' => 4,
        //         'biaya_kursus' => 3,
        //         'level_kursus' => 2,
        //         'fleksibilitas_waktu' => 4,
        //         'bahasa_pengantar' => 2,
        //         'metode_pembelajaran' => 3,
        //         'kualifikasi_dan_reputasi_instruktur' => 4,
        //         'kualitas_materi_kursus' => 4,
        //         'dukungan_dan_interaksi' => 4,
        //         'overall' => 4,
        //     ],
        // ];
        // foreach ($ratings as $rating) {
        //     RatingsPlatfrom::create($rating);
        // }
    }
}



   
    