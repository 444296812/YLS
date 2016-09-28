package com.tosit.yls.dao;

import com.tosit.yls.entiy.InformationEntity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/9/28 0028.
 */
public class InformationDao {
    final static String url="jdbc:mysql://localhost:3306/download";
    final static String user="root";
    final static String password="root";
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public List<InformationEntity> query() {
        List<InformationEntity> listOrder=new ArrayList<>();
        Connection conn=null;
        try {
            conn= DriverManager.getConnection(url,user,password);
            PreparedStatement ps=conn.prepareStatement("SELECT * FROM information");
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
               listOrder.add(new InformationEntity(rs.getInt("goodsID"),rs.getString("goodsName"),rs.getString("goodsMain"),rs.getString("goodsSrc"),rs.getDouble("goodsPrice")));
            }
            return listOrder;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}
