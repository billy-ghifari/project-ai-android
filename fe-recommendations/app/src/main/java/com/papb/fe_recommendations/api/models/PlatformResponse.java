package com.papb.fe_recommendations.api.models;

import java.util.List;

public class PlatformResponse {
    private List<PlatformModel> list_platform;

    public List<PlatformModel> getList_platform() {
        return list_platform;
    }

    public void setList_platform(List<PlatformModel> list_platform) {
        this.list_platform = list_platform;
    }
}