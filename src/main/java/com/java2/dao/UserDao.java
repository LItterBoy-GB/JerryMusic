package com.java2.dao;

import java.util.ArrayList;

import com.java2.pojo.Music;
import com.java2.pojo.User;

public interface UserDao {

    public User SelectUser(User user);

    public ArrayList<Music> QueryAllMusic(User user);

    public User InsertUser(User user);

    public int Insert(String title, String singer, String time, String url,
                      int userid);

}
