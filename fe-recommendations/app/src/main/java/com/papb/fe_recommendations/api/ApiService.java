package com.papb.fe_recommendations.api;

import com.papb.fe_recommendations.api.models.DataResponse;
import com.papb.fe_recommendations.api.models.PlatformResponse;
import com.papb.fe_recommendations.api.models.RatingModel;
import com.papb.fe_recommendations.api.models.RatingResponse;
import com.papb.fe_recommendations.api.models.UserModel;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

public interface ApiService {
    @POST("login")
    Call<UserModel> login(@Body UserModel userModel);

    @GET("get-data")
    Call<DataResponse> getData(@Header("Authorization") String token);

    @GET("platforms")
    Call<PlatformResponse> getPlatforms(@Header("Authorization") String token);

    @POST("add-rating")
    Call<RatingResponse> addRating(@Header("Authorization") String token, @Body RatingModel ratingModel);
}

