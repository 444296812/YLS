package com.tosit.yls.dao;

import com.tosit.yls.entiy.ListEntity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Administrator on 2016/9/28 0028.
 */
public class ListDao {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
     public void insert(){
         ListEntity listEntity =new ListEntity();
         Connection conn =null;
         try {
             int useID=listEntity.getUseID();
             String userName=listEntity.getTicketName();
             String userPapers=listEntity.getUsePapers();
             String userPhone=listEntity.getUsePhone();
             String ticketName=listEntity.getTicketName();
             double ticketPrice= listEntity.getTicketPrice();
             int ticketNum=listEntity.getTicketNum();
             double ticketTotal= listEntity.getTicketTotal();
             conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
             PreparedStatement ps =conn.prepareStatement("insert into list(useID,userName,userPapers,userPhone,ticketName,ticketPrice,ticketNum,ticketTotal) VALUES (?,?,?,?,?,?,?,?)");
             int i=1;
             ps.setInt(i++,useID);
             ps.setString(i++,userName);
             ps.setString(i++,userPapers);
             ps.setString(i++,userPhone);
             ps.setString(i++,ticketName);
             ps.setDouble(i++,ticketPrice);
             ps.setInt(i++,ticketNum);
             ps.setDouble(i++,ticketTotal);
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
}
