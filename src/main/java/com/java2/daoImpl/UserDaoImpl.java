package com.java2.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.java2.BaseDao.BaseDao;
import com.java2.dao.UserDao;
import com.java2.pojo.Music;
import com.java2.pojo.User;

public class UserDaoImpl implements UserDao {

    public User SelectUser(User user) {
        Connection conn = BaseDao.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = conn.prepareStatement("select * from user where name=? and pwd=?");
            pst.setString(1, user.getAccount());
            pst.setString(2, user.getPassword());
            rs = pst.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setAccount(user.getAccount());
                u.setPassword(user.getPassword());
                u.setNickname(rs.getString("nickname"));
                return u;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            BaseDao.release(conn, pst, rs);
        }
        return null;
    }

    public ArrayList<Music> QueryAllMusic(User user) {
        Connection conn = BaseDao.getConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<Music> musciArr = null;
        try {
            String sel = "select * from music";
            if (user.getId() != 0) {
                sel += " where userid = ?";
                pst = conn.prepareStatement(sel);
                pst.setInt(1, user.getId());
            } else {
                pst = conn.prepareStatement(sel);
            }
            rs = pst.executeQuery();
            musciArr = new ArrayList<Music>();
            ArrayList<String> str = new ArrayList<String>();
            while (rs.next()) {
                Music music = new Music();
                music.setId(rs.getInt("id"));
                music.setTitle(rs.getString("title"));
                music.setSinger(rs.getString("singer"));
                music.setTime(rs.getString("time"));
                music.setUrl(rs.getString("url"));
                boolean flag = true;
                for (int i = 0; i < str.size(); i++) {
                    if (music.getTitle().equals(str.get(i))) {
                        flag = false;
                        break;
                    }
                }
                if (flag) {
                    str.add(music.getTitle());
                    musciArr.add(music);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            BaseDao.release(conn, pst, rs);
        }
        return musciArr;
    }

    public User InsertUser(User user) {
        // TODO Auto-generated method stub
        Connection conn = BaseDao.getConnection();
        PreparedStatement pst = null;
        int number = 0;
        try {
            pst = conn.prepareStatement("insert into user(name,pwd,music_box,sex,nickname) value(?,?,?,?,?)");
            pst.setString(1, user.getAccount());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getMusic_box());
            pst.setString(4, user.getSex());
            pst.setString(5, user.getNickname());
            number = pst.executeUpdate();
            if (number != 0) {
                return user;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            BaseDao.release(conn, pst, null);
        }
        return null;
    }

    @Override
    public int Insert(String title, String singer, String time, String url,
                      int userid) {
        // TODO Auto-generated method stub
        Connection conn = BaseDao.getConnection();
        PreparedStatement pst = null;
        int number = 0;
        try {
            pst = conn.prepareStatement("insert into music(title,singer,time,url,userid) values(?,?,?,?,?)");
            pst.setString(1, title);
            pst.setString(2, singer);
            pst.setString(3, time);
            pst.setString(4, url);
            pst.setInt(5, userid);
            number = pst.executeUpdate();
            return number;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            BaseDao.release(conn, pst, null);
        }
        return 0;
    }


}
