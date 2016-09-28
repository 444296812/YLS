package com.tosit.yls.dao;

import com.tosit.yls.entiy.OrdersEntiy;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2016/9/28.
 */
public class OrdersDao {
  static {
      try {
          Class.forName("com.mysql.jdbc.Driver");
      } catch (ClassNotFoundException e) {
          e.printStackTrace();
      }
  }
    //查询数据库Orders内容
    public List<OrdersEntiy> ordersQuery(){
        List<OrdersEntiy> ordersList=new ArrayList<>();
        Connection conn=null;
        try {
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            PreparedStatement ps=conn.prepareStatement("SELECT * FROM orders");
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                ordersList.add(new OrdersEntiy(rs.getInt("ticketId"),rs.getString("ticketName"),rs.getDouble("ticketPrice"),rs.getInt("ticketNum"),rs.getDouble("ticketTotal")));
            }
            return ordersList;
        } catch (SQLException e) {
            return null;
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            ;
        }
    }
}
