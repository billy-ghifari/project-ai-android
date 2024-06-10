package com.papb.fe_recommendations.api.models;

public class RatingModel {
    private String user_id;
    private String platform_id;
    private int topik_kursus;
    private int durasi_kursus;
    private int biaya_kursus;
    private int level_kursus;
    private int fleksibilitas_waktu;
    private int bahasa_pengantar;
    private int metode_pembelajaran;
    private int kualifikasi_dan_reputasi_instruktur;
    private int kualitas_materi_kursus;
    private int dukungan_dan_interaksi;
    private int overall;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPlatform_id() {
        return platform_id;
    }

    public void setPlatform_id(String platform_id) {
        this.platform_id = platform_id;
    }

    public int getTopik_kursus() {
        return topik_kursus;
    }

    public void setTopik_kursus(int topik_kursus) {
        this.topik_kursus = topik_kursus;
    }

    public int getDurasi_kursus() {
        return durasi_kursus;
    }

    public void setDurasi_kursus(int durasi_kursus) {
        this.durasi_kursus = durasi_kursus;
    }

    public int getBiaya_kursus() {
        return biaya_kursus;
    }

    public void setBiaya_kursus(int biaya_kursus) {
        this.biaya_kursus = biaya_kursus;
    }

    public int getLevel_kursus() {
        return level_kursus;
    }

    public void setLevel_kursus(int level_kursus) {
        this.level_kursus = level_kursus;
    }

    public int getFleksibilitas_waktu() {
        return fleksibilitas_waktu;
    }

    public void setFleksibilitas_waktu(int fleksibilitas_waktu) {
        this.fleksibilitas_waktu = fleksibilitas_waktu;
    }

    public int getBahasa_pengantar() {
        return bahasa_pengantar;
    }

    public void setBahasa_pengantar(int bahasa_pengantar) {
        this.bahasa_pengantar = bahasa_pengantar;
    }

    public int getMetode_pembelajaran() {
        return metode_pembelajaran;
    }

    public void setMetode_pembelajaran(int metode_pembelajaran) {
        this.metode_pembelajaran = metode_pembelajaran;
    }

    public int getKualifikasi_dan_reputasi_instruktur() {
        return kualifikasi_dan_reputasi_instruktur;
    }

    public void setKualifikasi_dan_reputasi_instruktur(int kualifikasi_dan_reputasi_instruktur) {
        this.kualifikasi_dan_reputasi_instruktur = kualifikasi_dan_reputasi_instruktur;
    }

    public int getKualitas_materi_kursus() {
        return kualitas_materi_kursus;
    }

    public void setKualitas_materi_kursus(int kualitas_materi_kursus) {
        this.kualitas_materi_kursus = kualitas_materi_kursus;
    }

    public int getDukungan_dan_interaksi() {
        return dukungan_dan_interaksi;
    }

    public void setDukungan_dan_interaksi(int dukungan_dan_interaksi) {
        this.dukungan_dan_interaksi = dukungan_dan_interaksi;
    }

    public int getOverall() {
        return overall;
    }

    public void setOverall(int overall) {
        this.overall = overall;
    }
}
