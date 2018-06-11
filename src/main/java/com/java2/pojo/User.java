package com.java2.pojo;


public class User {
    private int id;
    private String account;
    private String password;
    private String sex;
    private String nickname;
    private String music_box;

    public User() {

    }

    public User(int id, String account, String password, String sex,
                String nickname, String music_box) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.sex = sex;
        this.nickname = nickname;
        this.music_box = music_box;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getMusic_box() {
        return music_box;
    }

    public void setMusic_box(String music_box) {
        this.music_box = music_box;
    }


}
