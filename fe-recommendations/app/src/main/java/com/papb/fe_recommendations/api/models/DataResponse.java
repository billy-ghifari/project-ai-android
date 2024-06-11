package com.papb.fe_recommendations.api.models;

import java.util.List;

public class DataResponse {
    private List<RecommendationModel> recommendations;

    public List<RecommendationModel> getRecommendations() {
        return recommendations;
    }

    public void setRecommendations(List<RecommendationModel> recommendations) {
        this.recommendations = recommendations;
    }

}
