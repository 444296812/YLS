package com.tosit.yls.servlet;

import com.tosit.yls.dao.OrdersDao;
import com.tosit.yls.dao.YlsDao;
import com.tosit.yls.entiy.DataFile;
import com.tosit.yls.entiy.InformationEntity;
import com.tosit.yls.entiy.OrdersEntiy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2016/9/27.
 */
@WebServlet("/cartOrders")
public class ShoppingCartOrdersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        //获取jsp,里面返回点击立即购买时候取到的数据
        String goods_Name=(req.getParameter("goods_name"));
        double goods_Price= Double.parseDouble((req.getParameter("goods_price")));
        System.out.println(goods_Name+":"+goods_Price);

        //将点击立即购买时候取到的数据通过dao，传到数据库
        OrdersEntiy ordersEntiy=new OrdersEntiy(1,goods_Name,goods_Price,1,goods_Price);
        OrdersDao ordersDao=new OrdersDao();
        ordersDao.addOrder(ordersEntiy);

        List<OrdersEntiy> ordersList=new OrdersDao().ordersQuery();
        req.setAttribute("ordersList",ordersList);
        List<DataFile> dataFiles = new YlsDao().query();
        req.setAttribute("dataFiles", dataFiles);
        req.getRequestDispatcher("shopping/shoppingCartOrders.jsp").forward(req, resp);
    }

}