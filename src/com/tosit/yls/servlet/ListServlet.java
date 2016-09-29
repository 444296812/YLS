package com.tosit.yls.servlet;

import com.tosit.yls.entiy.ListEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2016/9/29 0029.
 */
@WebServlet("/ListServlet")
public class ListServlet  extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName=req.getParameter("useName");
        String userPapers=req.getParameter("zhenJian");
        String userPhone=req.getParameter("phone");
        String ticketName=req.getParameter("ticketName");
        double ticketPrice= Double.parseDouble(req.getParameter("ticketPrice"));
        int ticketNum= Integer.parseInt(req.getParameter("ticketNum"));
        double ticketTotal= Double.parseDouble(req.getParameter("ticketTotal"));
       // ListEntity listEntity =new ListEntity(1,userName,userPapers,userPhone,ticketName,ticketPrice,ticketNum,ticketTotal);
        System.out.println(userName);

        req.getRequestDispatcher("threeLevel/success.html").include(req,resp);
    }
}
