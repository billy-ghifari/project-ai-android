package com.papb.fe_recommendations.adapter;


import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

import com.papb.fe_recommendations.activity.MainActivity.LoginFragment;
import com.papb.fe_recommendations.activity.MainActivity.RecommendationsFragment;
import com.papb.fe_recommendations.activity.MainActivity.AddRatingFragment;

public class ViewPagerAdapter extends FragmentStateAdapter {
    public ViewPagerAdapter(@NonNull FragmentActivity fragmentActivity) {
        super(fragmentActivity);
    }

    @NonNull
    @Override
    public Fragment createFragment(int position) {
        switch (position) {
            case 0:
                return new LoginFragment();
            case 1:
                return new RecommendationsFragment();
            case 2:
                return new AddRatingFragment();
            default:
                return new LoginFragment();
        }
    }

    @Override
    public int getItemCount() {
        return 3;
    }
}

