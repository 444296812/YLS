package com.tosit.yls.servlet;

import com.tosit.yls.dao.InformationDao;
import com.tosit.yls.dao.YlsDao;
import com.tosit.yls.entiy.InformationEntity;

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
@WebServlet("/featureSpot")
public class ShoppingInformationServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        List<InformationEntity> dataFiles=new InformationDao().query();
//        int s= Integer.parseInt(req.getParameter("str_id"));
//        req.setAttribute("str",s);
//        int x= Integer.parseInt(req.getParameter("cultural_id"));
//        req.setAttribute("sid",x);

        req.setAttribute("dataFiles",dataFiles);
        req.getRequestDispatcher("shopping/featureSpot.jsp").forward(req,resp);
    }
}
