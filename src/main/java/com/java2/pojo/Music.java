package com.java2.pojo;

public class Music {
    private int id;
    private String title;
    private String singer;
    private String time;
    private String url;
    private int userid;

    public Music() {

    }

    public Music(int id, String title, String singer, String time, String url, int userid) {
        this.userid = userid;
        this.id = id;
        this.title = title;
        this.singer = singer;
        this.time = time;
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

}
