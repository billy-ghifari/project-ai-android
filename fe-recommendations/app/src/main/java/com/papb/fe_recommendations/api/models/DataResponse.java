package com.papb.fe_recommendations.api.models;

import java.util.List;

public class DataResponse {
    private List<RecommendationModel> recommendations;
    private List<PlatformModel> platform;

    public List<RecommendationModel> getRecommendations() {
        return recommendations;
    }

    public void setRecommendations(List<RecommendationModel> recommendations) {
        this.recommendations = recommendations;
    }

    public List<PlatformModel> getPlatform() {
        return platform;
    }

    public void setPlatform(List<PlatformModel> platform) {
        this.platform = platform;
    }

    // getters and setters
}
