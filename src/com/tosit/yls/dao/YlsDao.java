package com.tosit.yls.dao;

import com.tosit.yls.entiy.DataFile;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2016/9/26.
 */
public  class YlsDao {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    //查询数据库内容
    public List<DataFile> query() {
//        DataFile dataFile=new DataFile();
        List<DataFile> listData=new ArrayList<>();
        Connection conn=null;
        try {
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            PreparedStatement ps=conn.prepareStatement("select article.id,article.title,article.time,article.main,article.img,columns.id as columnID,columns.conlumnName from article,columns where article.columns_id=columns.id");
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
//                int id=rs.getInt("id");
//                String conlumnName=rs.getString("conlumnName");
//                  dataFile.setColumns(conlumnName);
//                  dataFile.setId(id);
//
//                  listData.add(dataFile);
//
//                  System.out.println(id+conlumnName);
                listData.add(new DataFile(rs.getInt("id"),rs.getString("title"),rs.getInt("columnID"),rs.getString("time"),rs.getString("main"),rs.getString("img"),rs.getString("conlumnName")));
            }
         return listData;
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
    public static void main(String[] args) {
    YlsDao ylsDao=new YlsDao();
    ylsDao.query();

}
}
