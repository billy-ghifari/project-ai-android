package com.papb.fe_recommendations.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.papb.fe_recommendations.R;
import com.papb.fe_recommendations.api.models.RecommendationModel;
import java.util.List;

public class RecommendationAdapter extends RecyclerView.Adapter<RecommendationAdapter.ViewHolder> {
    private final List<RecommendationModel> recommendations;

    public RecommendationAdapter(List<RecommendationModel> recommendations) {
        this.recommendations = recommendations;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recommendation, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        RecommendationModel recommendation = recommendations.get(position);
        holder.platformName.setText(recommendation.getPlatform_name());
        holder.description.setText(recommendation.getDescription());
        holder.urlPlatform.setText(recommendation.getUrl());
//        holder.imageView.setImageResource(recommendation.getImage());
        // Load image using your preferred image loading library (e.g., Glide, Picasso)
    }

    @Override
    public int getItemCount() {
        return recommendations.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        public TextView platformName;
        public TextView description;
        public TextView urlPlatform;
//        public ImageView imageView;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            platformName = itemView.findViewById(R.id.platform_name);
            description = itemView.findViewById(R.id.description);
//            imageView = itemView.findViewById(R.id.image);
            urlPlatform = itemView.findViewById(R.id.url_platform);

        }
    }
}
