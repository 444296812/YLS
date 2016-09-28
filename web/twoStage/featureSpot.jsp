<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>玉龙雪山商务网-二级-景点</title>
<link rel="stylesheet" type="text/css" href="../css/css.css"/>
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
</head>

<body>
<%request.getAttribute("dataFiles");%>
    <!--top flash begin-->
    <div class="YL-home-spot">
      
    </div>
    <!--top flash end-->
    
    <div class="YL-body">
       
           <div class="YL-w1060">
              
               <!--jokul top begin-->
               <div class="YL-header YL-w-header">
                  
                    <!--logo begin-->
                    <div class="header-logo w-logo"><a href="javascript:"><img src="../images/logo2.png"/></a></div>
                    <!--logo end-->
                    
                    <!--头部内容区域 begin-->
                    <div class="header-top">
                      
                       <div class="service-hotline"><img src="../images/service-hotline.png"/></div>
                       
                       <div class="header-weather"><iframe allowtransparency="true" style="margin-left:-80px" frameborder="0" width="205" height="64" scrolling="no" src="http://tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=1&bd=0&k=&f=ff0000&q=0&e=0&a=0&c=56651&w=205&h=64&align=left"></iframe></div>
                       
                       <div class="intelligent-system"><a href="javascript:"><img src="../images/intelligent-system.png"/></a></div>
                      
                    </div>
                    <!--头部内容区域 end-->
                    
                    <!--头部导航 begin-->
                    <div class="header-nav">
                      <ul>
                         <li><a href="featureSpot.jsp">景点介绍</a></li>
                         <li><a href="travelService.jsp">旅游服务</a></li>
                         <li><a href="circuit.html">推荐线路</a></li>
                         <li><a href="featureSpot.jsp">票务预订</a></li>
                         <li><a href="culturalResources.html">资源文化</a></li>
                      </ul>
                    </div>
                    <!--头部导航 end-->
                  
               </div>
               <!--jokul top end-->
               
               <!--center begin-->
               <div class="YL-stage">
                 
                  <!--left begin-->
                  <div class="stageLeft">
                  
                     <!--玉龙雪山商务网-二级-景点 begin-->
                     <div class="stage-spot">
                       
                       <div class="spot-title"><span><a href="javascript:">玉龙景点</a></span></div>
                       
                       <div class="spot-img"><a href="javascript:"><img src="../images/img-08.jpg"/></a></div>
                       
                       <div class="spot-text">
                          
                          <div class="spot-name">玉&nbsp;龙&nbsp;雪&nbsp;山&nbsp;经&nbsp;典&nbsp;景&nbsp;点</div>
                          
                          <div class="spot-route">
                          
                             <%--<div class="route-name"><a href="javascript:">丽江市</a></div>--%>
                              <%--丽江市已成功取到--%>
                              <div class="route-name"><a href="javascript:">
                                  <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==1 && datafiles.id==18}">
                                          ${datafiles.title}
                                      </c:if>
                                  </c:forEach>
                              </a></div>
                             
                             <div class="soute-ul soute-1">
                                <dl>
                                   <dt>
                                      <span><a href="javascript:">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==1 && datafiles.id==19}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==19}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==1 && datafiles.id==requestScope.get('str')}">
                                           <img src="${datafiles.img}"/>
                                           </c:if>
                                       </c:forEach>
                                   </a></dd>
                                </dl>
                             </div>
                             
                             <div class="soute-li">
                               <ul>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==20}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==21}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==22}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                               </ul>
                             </div>
                             
                             <div class="soute-ul">
                                <dl>
                                   <dt>
                                      <%--<span><a href="javascript:">印象丽江-雪山篇</a></span>--%>
                                       <span><a href="javascript:">
                                           <c:forEach var="datafiles" items="${dataFiles}">
                                               <%--双重条件去重--%>
                                               <c:if test="${datafiles.columnID==1 && datafiles.id==23}">
                                                   ${datafiles.title}
                                               </c:if>
                                           </c:forEach>
                                       </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==23}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                             <div class="soute-li">
                               <ul>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==24}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==1 && datafiles.id==25}">
                                          ${datafiles.title}
                                      </c:if>
                                  </c:forEach> </a></li>
                               </ul>
                             </div>
                             
                             <div class="soute-ul soute-2">
                                <dl>
                                   <dt>
                                      <%--<span><a href="javascript:">冰川公园</a></span>--%>
                                       <span><a href="javascript:">
                                           <c:forEach var="datafiles" items="${dataFiles}">
                                               <%--双重条件去重--%>
                                               <c:if test="${datafiles.columnID==1 && datafiles.id==26}">
                                                   ${datafiles.title}
                                               </c:if>
                                           </c:forEach>
                                       </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==26}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                             <div class="soute-li">
                               <ul>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==27}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                               </ul>
                             </div>
                             
                             <div class="soute-ul soute-2">
                                <dl>
                                   <dt>
                                      <%--<span><a href="javascript:">蓝月谷</a></span>--%>
                                      <span><a href="javascript:">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==1 && datafiles.id==29}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==29}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                             <div class="soute-li">
                               <ul>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==30}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                                  <li><span></span><a href="javascript:">
                                      <c:forEach var="datafiles" items="${dataFiles}">
                                          <%--双重条件去重--%>
                                          <c:if test="${datafiles.columnID==1 && datafiles.id==31}">
                                              ${datafiles.title}
                                          </c:if>
                                      </c:forEach>
                                  </a></li>
                               </ul>
                             </div>
                             
                             <div class="soute-ul">
                                <dl>
                                   <dt>
                                      <%--<span><a href="javascript:">云杉坪</a></span>--%>
                                       <span><a href="javascript:">
                                           <c:forEach var="datafiles" items="${dataFiles}">
                                               <%--双重条件去重--%>
                                               <c:if test="${datafiles.columnID==1 && datafiles.id==32}">
                                                   ${datafiles.title}
                                               </c:if>
                                           </c:forEach>
                                       </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==32}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                             <div class="soute-ul soute-3">
                                <dl>
                                   <dt>
                                      <%--<span><a href="javascript:">牦牛坪</a></span>--%>
                                      <span><a href="javascript:">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==1 && datafiles.id==33}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==33}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                             
                          </div>
                          
                          <div class="spot-name spot-color">玉&nbsp;龙&nbsp;雪&nbsp;山&nbsp;经&nbsp;典&nbsp;景&nbsp;点</div>
                          
                          <div class="spot-classics">
                             
                             <div class="classics-name"><a href="javascript:">
                                 <c:forEach var="datafiles" items="${dataFiles}">
                                     <%--双重条件去重--%>
                                     <c:if test="${datafiles.columnID==1 && datafiles.id==18}">
                                         ${datafiles.title}
                                     </c:if>
                                 </c:forEach>
                             </a></div>
                             
                             <div class="classics-ul soute-4">
                                <dl>
                                   <dt>
                                      <span><a href="javascript:">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==1 && datafiles.id==34}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==34}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                             <div class="classics-ul soute-5">
                                <dl>
                                   <dt>
                                      <span><a href="javascript:">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==1 && datafiles.id==67}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a></span>
                                      <div>
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==1 && datafiles.id==67}">
                                            ${datafiles.main}
                                        </c:if>
                                    </c:forEach>
                                </div>
                                   </dt>
                                   <dd><a href="javascript:"><img src="../images/img-11.jpg"/></a></dd>
                                </dl>
                             </div>
                             
                          </div>
                          
                       </div>
                       
                     </div>
                     <!--玉龙雪山商务网-二级-景点 end-->
                  
                  </div>
                  <!--left end-->
                  
                  <!--right begin-->
                  <div class="stageRight">
                     
                     <div class="stage-ico">
                       
                     <!--链接 begin-->
                     <div class="scenic-ico">
                         <ul>
                            <li><a href="featureSpot.jsp"><img src="../images/feature-01.png"/></a><span><a href="twoStage/featureSpot.html">玉龙景点</a></span></li>
                            <li><a href="featureSpot.jsp"><img src="../images/feature-021.png"/></a><span><a href="threeLevel/featureSpot.html">门&nbsp;&nbsp;票</a></span></li>
                            <li><a href="tourismIndex.html"><img src="../images/feature-03.png"/></a><span><a href="threeLevel/tourismIndex.html">景区交通</a></span></li>	
                            <li><a href="travelService.jsp"><img src="../images/feature-04.png"/></a><span><a href="twoStage/travelService.html">客服中心</a></span></li>
                            <li><a href="tourismIndex.html"><img src="../images/feature-05.png"/></a><span><a href="threeLevel/tourismIndex.html">旅游指数</a></span></li>
                            <li><a href="tourismIndex.html"><img src="../images/feature-06.png"/></a><span><a href="threeLevel/tourismIndex.html">问卷调查</a></span></li>
                         </ul>
                     </div>
                     <!--链接 end-->
                       
                     </div>
                     
                     <!--图片按钮 begin-->
                     <div class="scenic-btn">
                       <a href="javascript:"><img src="../images/img-04.png"/></a>
                       <a href="javascript:"><img src="../images/img-05.png"/></a>
                     </div>
                     <!--图片按钮 end-->
                     
                     <!--微信二维码 begin-->
                     <div class="YL-wx-code">
                       <dl>
                          <dt><img src="../images/img-06.jpg"></dt>
                          <dd>
                             <span>微信扫一扫</span>
                             <div>关注玉龙雪山微信<br/><font class="font">愉悦旅途&nbsp;&nbsp;&nbsp;从这里开始</font></div>
                          </dd>
                       </dl>
                     </div>
                     <!--微信二维码 end-->                     
                     
                  </div>
                  <!--right end-->
                 
               </div>
               <!--center end-->
              
           </div>
           
           <!--footer begin-->
           <div class="YL-footer">
             
              <div class="YL-width">
              
                 <div class="footer-w">
                    
                    <!--微信号 begin-->
                    <div class="footer-wx">
                      <ul>
                         <li><i class="footer-ico"><img src="../images/img-07.jpg"/></i><span>玉龙雪山微信号</span></li>
                         <li><i class="footer-ico"><img src="../images/img-07.jpg"/></i><span>雪山AR导览</span></li>
                      </ul>
                    </div>
                    <!--微信号 end-->
                    
                    <!--电话和分享 begin-->
                    <div class="footer-top">
                      
                       <div class="footer-info">
                        <span class="footer-mobel"><img src="../images/footer-service-hotline.png"/></span>
                        <span class="footer-mk">|<a href="javascript:">关于我们</a>|<a href="javascript:">协议条款</a>|<a href="javascript:">帮助中心</a>|</span>
                       </div>
                       
                       <div class="footer-share">
                         <span class="share-i"><a href="javascript:"><img src="../images/sina.png"/></a><a href="javascript:"><img src="../images/tencent.png"/></a></span>
                         <span class="share-ico"><a href="javascript:"><img src="../images/ico-03.png"/></a><a href="javascript:"><img src="../images/ico-04.png"/></a><a href="javascript:"><img src="../images/ico-05.png"/></a><a href="javascript:"><img src="images/ico-06.png"/></a><a href="javascript:"><img src="../images/ico-07.png"/></a><a href="javascript:"><img src="../images/ico-08.png"/></a></span>
                       </div>
                      
                    </div>
                    <!--电话和分享 end-->
                    
                    <div class="footer-txt">
                      <ul>
                        <li>版权所有：云南丽江玉龙雪山旅游开发区管委会     滇ICP备09010050-5号</li>
                        <li>联系地址：云南省丽江市古城区福慧路玉龙雪山旅游大厦</li>
                      </ul>
                    </div>
                    
                 </div>
              
              </div>
             
           </div>
           <!--footer end-->
       
    </div>
<script type="text/jscript" src="js/mouse.js"></script>    
</body>
</html>
