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
 * Created by Administrator on 2016/9/27 0027.
 */   //线路推荐1.2
@WebServlet("/TwoCircuit12")
public class TwoCircuit12Servlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
       // resp.setContentType("text/html;charset=utf-8");

        List<DataFile> dataFiles=new YlsDao().query();
        //传递一个str过去
        String str="1.2印象丽江灵魂之旅";
        req.setAttribute("str",str);

        req.setAttribute("dataFiles",dataFiles);
        req.getRequestDispatcher("twoStage/circuit.jsp").forward(req,resp);
    }
}
