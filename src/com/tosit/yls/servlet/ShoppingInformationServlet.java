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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("goods_id"));
        System.out.println("这里是ajax输出："+id);

        //获取informationDAO里面的信息来和jsp里取出来的id相比较，如果相等则把informationDAO里面的数据存到Orders,并在购物车显示出Orders里面的数据

        List<InformationEntity> informationEntityList=new InformationDao().query();
        for (InformationEntity each:informationEntityList) {
            int i=each.getGoodsID();
            if (id==i){
                System.out.println("Oretr的id:"+each.getGoodsID());
                System.out.println("Oretr的id:"+each.getGoodsName());
                System.out.println("Oretr的id:"+each.getGoodsMain());
                System.out.println("Oretr的id:"+each.getGoodsSrc());
                System.out.println("Oretr的id:"+each.getGoodsPrice());
            }
        }

        }

    }

