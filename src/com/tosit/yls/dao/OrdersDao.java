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

    //将点击立即购买时候取到的数据通过dao，传到数据库
    public void addOrder(OrdersEntiy ordersEntiy){
        Connection conn=null;
        try {
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            PreparedStatement ps=conn.prepareStatement("insert into orders (ticketId,ticketName,ticketPrice,ticketNum,ticketTotal)values(?,?,?,?,?)");

            ps.setInt(1,ordersEntiy.getTicketId());
            ps.setString(2,ordersEntiy.getTicketName());
            ps.setDouble(3,ordersEntiy.getTicketPrice());
            ps.setInt(4,ordersEntiy.getTicketNum());
            ps.setDouble(5,ordersEntiy.getTicketTotal());

            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public static void main(String[] args) {
        OrdersDao ordersDao=new OrdersDao();

    }
}
