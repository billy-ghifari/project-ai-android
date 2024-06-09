<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Platform;
use App\Models\RatingsPlatfrom;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class McrsController extends Controller
{
    /**
     * Display a listing of the resource.
     * 
     */
    public function index()
    {
        $platforms = Platform::get();
        $platforms->makeHidden('id');
        $recommendations = null;

        if (Auth::user()) {
            $userId = Auth::user()->uuid;
            $checkRatingUser = RatingsPlatfrom::where('user_id', $userId)->get();
            if ($userId && $checkRatingUser->isNotEmpty()) {
                $getUnRatings = RatingsPlatfrom::where('user_id', $userId)->with('platform')->get();
                $otherUserRatings = RatingsPlatfrom::with('user')->where('user_id', '!=', $userId)->get()->groupBy('user_id');

                $criteria = [
                    'topik_kursus', 'durasi_kursus', 'biaya_kursus', 'level_kursus',
                    'fleksibilitas_waktu', 'bahasa_pengantar', 'metode_pembelajaran',
                    'kualifikasi_dan_reputasi_instruktur', 'kualitas_materi_kursus',
                    'dukungan_dan_interaksi', 'overall'  // Assuming overall is also calculated
                ];

                $averageSimilarity = [];
                foreach ($otherUserRatings as $ratingsGroup) {
                    $similarityScores = array_fill_keys($criteria, 0);
                    $sigma = array_fill_keys($criteria, ['un' => 0, 'u' => 0, 'cross' => 0]);

                    foreach ($ratingsGroup as $rating) {
                        foreach ($getUnRatings as $unRating) {
                            foreach ($criteria as $criterion) {
                                $similarityScores[$criterion] += $rating[$criterion] * $unRating->$criterion;
                                $sigma[$criterion]['un'] += $unRating->$criterion ** 2;
                                $sigma[$criterion]['u'] += $rating[$criterion] ** 2;
                                $sigma[$criterion]['cross'] += $rating[$criterion] * $unRating->$criterion;
                            }
                        }
                    }

                    $total = 0;
                    foreach ($criteria as $criterion) {
                        $similarity = $sigma[$criterion]['cross'] / (sqrt($sigma[$criterion]['un']) * sqrt($sigma[$criterion]['u']));
                        $total += is_nan($similarity) ? 0 : $similarity;
                    }

                    $averageSimilarity[] = ['avgSim' => $total / count($criteria), 'user_id' => $ratingsGroup[0]['user_id']];
                }
                $rankOne = collect($averageSimilarity)->sortByDesc('avgSim')->first();

                $getUserBiggestSimilarity = RatingsPlatfrom::where('user_id', $rankOne['user_id'])->get();

                foreach ($getUnRatings as $unRating) {
                    foreach ($criteria as $criterion) {
                        if ($unRating->$criterion === 0) {
                            $unRating->$criterion = $getUserBiggestSimilarity->where('platform_id', $unRating->platform_id)->first()->$criterion ?? $unRating->$criterion;
                        }
                    }
                }

                $recommendations = $getUnRatings->sortByDesc('overall');
                $platforms_recommendations = [];
                foreach ($recommendations as $recommendation) {
                    $platforms_recommendations[] = $recommendation['platform'];
                }
            }
        }

        return response()->json([
            'recommendations' => $platforms_recommendations,
        ], 200);
    }




    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $checkRatingUser = RatingsPlatfrom::where('user_id', Auth::user()->uuid)->where('platform_id', $request->platform_id)->first();
        if (!$checkRatingUser) {
            RatingsPlatfrom::create([
                'user_id' => Auth::user()->uuid,
                'platform_id' => $request->platform_id,
                'topik_kursus' => $request->topik_kursus,
                'durasi_kursus' => $request->durasi_kursus,
                'biaya_kursus' => $request->biaya_kursus,
                'level_kursus' => $request->level_kursus,
                'fleksibilitas_waktu' => $request->fleksibilitas_waktu,
                'bahasa_pengantar' => $request->bahasa_pengantar,
                'metode_pembelajaran' => $request->metode_pembelajaran,
                'kualifikasi_dan_reputasi_instruktur' => $request->kualifikasi_dan_reputasi_instruktur,
                'kualitas_materi_kursus' => $request->kualitas_materi_kursus,
                'dukungan_dan_interaksi' => $request->dukungan_dan_interaksi,
                'overall' => $request->overall,
            ]);
            return response()->json(['message' => 'Rating created successfully'], 201);
        } else {
            $checkRatingUser->update([
                'topik_kursus' => $request->topik_kursus,
                'durasi_kursus' => $request->durasi_kursus,
                'biaya_kursus' => $request->biaya_kursus,
                'level_kursus' => $request->level_kursus,
                'fleksibilitas_waktu' => $request->fleksibilitas_waktu,
                'bahasa_pengantar' => $request->bahasa_pengantar,
                'metode_pembelajaran' => $request->metode_pembelajaran,
                'kualifikasi_dan_reputasi_instruktur' => $request->kualifikasi_dan_reputasi_instruktur,
                'kualitas_materi_kursus' => $request->kualitas_materi_kursus,
                'dukungan_dan_interaksi' => $request->dukungan_dan_interaksi,
                'overall' => $request->overall,
            ]);
            return response()->json(['message' => 'Rating updated successfully'], 200);
        }
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
