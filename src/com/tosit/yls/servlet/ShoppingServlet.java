package com.tosit.yls.servlet;

import com.tosit.yls.entiy.InformationEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2016/9/28.
 */
@WebServlet("/onload")
public class ShoppingServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        List<InformationEntity> list=new ArrayList<>();

        req.getRequestDispatcher("shopping/featureSpot.jsp").include(req,resp);

    }
}
