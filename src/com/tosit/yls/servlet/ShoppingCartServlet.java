package com.tosit.yls.servlet;

import com.tosit.yls.dao.OrdersDao;
import com.tosit.yls.dao.YlsDao;
import com.tosit.yls.entiy.DataFile;
import com.tosit.yls.entiy.OrdersEntiy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by DELL on 2016/9/27.
 */
@WebServlet("/cart")
public class ShoppingCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        List<OrdersEntiy> ordersList=new OrdersDao().ordersQuery();
//        int s= Integer.parseInt(req.getParameter("str_id"));
//        req.setAttribute("str",s);
//        int x= Integer.parseInt(req.getParameter("cultural_id"));
//        req.setAttribute("sid",x);

        req.setAttribute("ordersList",ordersList);
        req.getRequestDispatcher("shopping/shoppingCart.jsp").forward(req,resp);
    }
}
