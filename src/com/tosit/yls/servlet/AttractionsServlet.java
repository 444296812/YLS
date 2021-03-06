package com.tosit.yls.servlet;

import com.tosit.yls.dao.YlsDao;
import com.tosit.yls.entiy.DataFile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by DELL on 2016/9/26.
 */  //景点介绍servlet  二级目录
@WebServlet("/attractions")
public class AttractionsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        //resp.setContentType("text/html;charset=utf-8");

        List<DataFile> dataFiles=new YlsDao().query();

        int x= Integer.parseInt(req.getParameter("attractions_id"));
        req.setAttribute("str",x);
        req.setAttribute("dataFiles",dataFiles);
        req.getRequestDispatcher("twoStage/featureSpot.jsp").forward(req,resp);
    }
}
