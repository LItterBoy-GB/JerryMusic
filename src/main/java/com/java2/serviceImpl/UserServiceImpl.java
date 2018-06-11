package com.java2.serviceImpl;

import java.util.ArrayList;

import com.java2.dao.UserDao;
import com.java2.daoImpl.UserDaoImpl;
import com.java2.pojo.Music;
import com.java2.pojo.User;
import com.java2.service.UserService;

public class UserServiceImpl implements UserService {

    private UserDao dao = new UserDaoImpl();

    public User login(User user) {
        return dao.SelectUser(user);
    }

    public ArrayList<Music> QueryAllMusic(User user) {
        return dao.QueryAllMusic(user);
    }

    public User Register(User user) {
        // TODO Auto-generated method stub
        return dao.InsertUser(user);
    }

    @Override
    public int Insert(String title, String singer, String time, String url,
                      int userid) {
        // TODO Auto-generated method stub
        return dao.Insert(title, singer, time, url, userid);
    }


}
