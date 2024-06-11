package com.papb.fe_recommendations.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.papb.fe_recommendations.R;
import com.papb.fe_recommendations.adapter.RecommendationAdapter;
import com.papb.fe_recommendations.adapter.ViewPagerAdapter;
import com.papb.fe_recommendations.api.ApiClient;
import com.papb.fe_recommendations.api.ApiService;
import com.papb.fe_recommendations.api.models.DataResponse;
import com.papb.fe_recommendations.api.models.PlatformModel;
import com.papb.fe_recommendations.api.models.PlatformResponse;
import com.papb.fe_recommendations.api.models.RatingModel;
import com.papb.fe_recommendations.api.models.RatingResponse;
import com.papb.fe_recommendations.api.models.RecommendationModel;
import com.papb.fe_recommendations.api.models.UserModel;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.papb.fe_recommendations.utils.SharedPrefManager;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {
    private TabLayout tabLayout;
    private ViewPager2 viewPager;
    private static Context context;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        tabLayout = findViewById(R.id.tabLayout);
        viewPager = findViewById(R.id.viewPager);

        ViewPagerAdapter adapter = new ViewPagerAdapter(this);
        viewPager.setAdapter(adapter);

        new TabLayoutMediator(tabLayout, viewPager, (tab, position) -> {
            switch (position) {
                case 0:
                    tab.setText("Login");
                    break;
                case 1:
                    tab.setText("Recommendations");
                    break;
                case 2:
                    tab.setText("Add Rating");
                    break;
            }
        }).attach();
    }

    public static class LoginFragment extends Fragment {
        private EditText email, password;
        private Button loginButton;
        private ApiService apiService;

        @Override
        public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
            View view = inflater.inflate(R.layout.fragment_login, container, false);
            email = view.findViewById(R.id.email);
            password = view.findViewById(R.id.password);
            loginButton = view.findViewById(R.id.login_button);

            apiService = ApiClient.getClient().create(ApiService.class);

            loginButton.setOnClickListener(v -> {
                UserModel userModel = new UserModel();
                userModel.setEmail(email.getText().toString());
                userModel.setPassword(password.getText().toString());

                apiService.login(userModel).enqueue(new Callback<UserModel>() {
                    @Override
                    public void onResponse(@NonNull Call<UserModel> call, @NonNull Response<UserModel> response) {
                        if (response.isSuccessful() && response.body() != null) {
                            String token = response.body().getToken_type() + " " + response.body().getAccess_token();
                            Log.d("LoginFragment", "Received token: " + token);
                            try {
                                SharedPrefManager.getInstance(getContext()).saveBearerToken(token);
                                String token2 = SharedPrefManager.getInstance(getContext()).getBearerToken();
                                Log.d("LoginFragment", "Stored token: " + token2);
                                Toast.makeText(getContext(), "Login Successful: " + token2, Toast.LENGTH_SHORT).show();
                            } catch (Exception e) {
                                Log.e("LoginFragment", "Error saving token: " + e.getMessage());
                                Toast.makeText(getContext(), "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show();
                            }

                        } else {
                            Toast.makeText(getContext(), "Login Failed", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onFailure(@NonNull Call<UserModel> call, @NonNull Throwable t) {
                        Log.e("LoginFragment", "Login Error: " + t.getMessage());
                        Toast.makeText(getContext(), "Login Error: " + t.getMessage(), Toast.LENGTH_SHORT).show();
                    }
                });
            });

            return view;
        }
    }

    public static class RecommendationsFragment extends Fragment {
        private RecyclerView recyclerView;
        private ApiService apiService;

        @Override
        public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
            View view = inflater.inflate(R.layout.fragment_data, container, false);
            recyclerView = view.findViewById(R.id.recyclerView);
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));

            apiService = ApiClient.getClient().create(ApiService.class);
            String token =  SharedPrefManager.getInstance(getContext()).getBearerToken();// Retrieve token from SharedPreferences or any other method
            Toast.makeText(getContext(), "token" + token, Toast.LENGTH_SHORT).show();

                    apiService.getData(token).enqueue(new Callback<DataResponse>() {
                        @Override
                        public void onResponse(@NonNull Call<DataResponse> call, @NonNull Response<DataResponse> response) {
                            if (response.isSuccessful() && response.body() != null) {
                                List<RecommendationModel> recommendations = response.body().getRecommendations();
                                RecommendationAdapter adapter = new RecommendationAdapter(recommendations);
                                recyclerView.setAdapter(adapter);
                            } else {
                                Toast.makeText(getContext(), "Failed to retrieve data", Toast.LENGTH_SHORT).show();
                            }
                        }

                        @Override
                        public void onFailure(@NonNull Call<DataResponse> call, @NonNull Throwable t) {
                            Toast.makeText(getContext(), "Error retrieving data", Toast.LENGTH_SHORT).show();
                        }
                    });

            return view;
        }
    }

    public static class AddRatingFragment extends Fragment {
        private Spinner platformId;
        private RatingBar topikKursus, durasiKursus, biayaKursus, levelKursus, fleksibilitasWaktu, bahasaPengantar, metodePembelajaran, kualifikasiInstruktur, kualitasMateri, dukunganInteraksi, overall;
        private Button submitButton;
        private ApiService apiService;
        private List<PlatformModel> platformList = new ArrayList<>();
        private List<String> platformNames = new ArrayList<>();

        @Override
        public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
            View view = inflater.inflate(R.layout.fragment_input, container, false);
            platformId = view.findViewById(R.id.platform_id);
            topikKursus = view.findViewById(R.id.topik_kursus);
            durasiKursus = view.findViewById(R.id.durasi_kursus);
            biayaKursus = view.findViewById(R.id.biaya_kursus);
            levelKursus = view.findViewById(R.id.level_kursus);
            fleksibilitasWaktu = view.findViewById(R.id.fleksibilitas_waktu);
            bahasaPengantar = view.findViewById(R.id.bahasa_pengantar);
            metodePembelajaran = view.findViewById(R.id.metode_pembelajaran);
            kualifikasiInstruktur = view.findViewById(R.id.kualifikasi_instruktur);
            kualitasMateri = view.findViewById(R.id.kualitas_materi);
            dukunganInteraksi = view.findViewById(R.id.dukungan_interaksi);
            overall = view.findViewById(R.id.overall);
            submitButton = view.findViewById(R.id.submit_button);

            apiService = ApiClient.getClient().create(ApiService.class);

            // Fetch platforms from API
            fetchPlatforms();

            submitButton.setOnClickListener(v -> {
                RatingModel ratingModel = new RatingModel();
                int selectedPosition = platformId.getSelectedItemPosition();
                if (selectedPosition != -1 && !platformList.isEmpty()) {
                    ratingModel.setPlatform_id(platformList.get(selectedPosition).getUuid());
                }
                ratingModel.setTopik_kursus(Math.round(topikKursus.getRating()));
                ratingModel.setDurasi_kursus(Math.round(durasiKursus.getRating()));
                ratingModel.setBiaya_kursus(Math.round(biayaKursus.getRating()));
                ratingModel.setLevel_kursus(Math.round(levelKursus.getRating()));
                ratingModel.setFleksibilitas_waktu(Math.round(fleksibilitasWaktu.getRating()));
                ratingModel.setBahasa_pengantar(Math.round(bahasaPengantar.getRating()));
                ratingModel.setMetode_pembelajaran(Math.round(metodePembelajaran.getRating()));
                ratingModel.setKualifikasi_dan_reputasi_instruktur(Math.round(kualifikasiInstruktur.getRating()));
                ratingModel.setKualitas_materi_kursus(Math.round(kualitasMateri.getRating()));
                ratingModel.setDukungan_dan_interaksi(Math.round(dukunganInteraksi.getRating()));
                ratingModel.setOverall(Math.round(overall.getRating()));

                String token = SharedPrefManager.getInstance(getContext()).getBearerToken(); // Retrieve token from SharedPreferences or any other method

                apiService.addRating(token, ratingModel).enqueue(new Callback<RatingResponse>() {
                    @Override
                    public void onResponse(@NonNull Call<RatingResponse> call, @NonNull Response<RatingResponse> response) {
                        if (response.isSuccessful()) {
                            Toast.makeText(getContext(), "Rating Submitted Successfully", Toast.LENGTH_SHORT).show();
                        } else {
                            Toast.makeText(getContext(), "Failed to Submit Rating", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onFailure(@NonNull Call<RatingResponse> call, @NonNull Throwable t) {
                        Toast.makeText(getContext(), "Error Submitting Rating", Toast.LENGTH_SHORT).show();
                    }
                });
            });

            return view;
        }

        private void fetchPlatforms() {
            String token = SharedPrefManager.getInstance(getContext()).getBearerToken(); // Retrieve token from SharedPreferences

            apiService.getPlatforms(token).enqueue(new Callback<PlatformResponse>() {
                @Override
                public void onResponse(@NonNull Call<PlatformResponse> call, @NonNull Response<PlatformResponse> response) {
                    if (response.isSuccessful() && response.body() != null) {
                        platformList = response.body().getList_platform();
                        for (PlatformModel platform : platformList) {
                            platformNames.add(platform.getPlatform_name());
                        }
                        ArrayAdapter<String> adapter = new ArrayAdapter<>(requireContext(), android.R.layout.simple_spinner_item, platformNames);
                        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                        platformId.setAdapter(adapter);
                        Log.d("fetchPlatforms", "Platforms fetched successfully.");
                    } else {
                        String errorMessage = "Failed to fetch platforms: " + response.message();
                        Log.e("fetchPlatforms", errorMessage);
                        Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
                    }
                }

                @Override
                public void onFailure(@NonNull Call<PlatformResponse> call, @NonNull Throwable t) {
                    String errorMessage = "Error fetching platforms: " + t.getMessage();
                    Log.e("fetchPlatforms", errorMessage);
                    Toast.makeText(getContext(), errorMessage, Toast.LENGTH_SHORT).show();
                }
            });
        }

    }
}
