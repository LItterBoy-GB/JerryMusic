package com.java2.service;

import java.util.ArrayList;

import com.java2.pojo.Music;
import com.java2.pojo.User;

public interface UserService {

    public User login(User user);

    public ArrayList<Music> QueryAllMusic(User user);

    public User Register(User user);

    public int Insert(String title, String singer, String time, String url,
                      int userid);
}
