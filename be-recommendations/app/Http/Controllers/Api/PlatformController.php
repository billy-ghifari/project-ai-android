<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Platform;
use Illuminate\Http\Request;

class PlatformController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $platforms = Platform::all();

        if ($platforms->isEmpty()) {
            return response()->json(['message' => 'Tidak ada platform yang ditemukan.'], 404);
        }
        $platforms->makeHidden('id');
        return response()->json($platforms);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($uuid)
    {
        $platform = Platform::where('uuid', $uuid)->first();

        if (!$platform) {
            return response()->json(['message' => 'Tidak ada platform yang ditemukan.'], 404);
        }
        $platform->makeHidden('id');
        return response()->json($platform);
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
    public function destroy($uuid)
    {
       // Find the platform by uuid
       $platform = Platform::where('uuid', $uuid)->first();

       if (!$platform) {
           return response()->json(['message' => 'Platform tidak ditemukan.'], 404);
       }

       // Delete related ratings
       RatingsPlatform::where('platform_id', $platform->id)->delete();

       // Delete the platform
       $platform->delete();

       return response()->json(['message' => 'Platform dan data terkait berhasil dihapus.'], 200);
    }
}
