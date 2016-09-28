<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>玉龙雪山商务网-首页</title>
<link rel="stylesheet" type="text/css" href="../css/css.css"/>
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/focus.js"></script>
</head>

<body class="YL-home-body">
<%request.getAttribute("dataFiles");%>
    <!--top flash begin-->
    <div class="YL-home-flash">
      <embed src="../images/1370.swf" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" wmode="opaque" width="100%" height="100%" loop="true" autostart="true"></embed>
    </div>
    <!--top flash end-->
    <div class="YL-network-flash"></div>
    
    <div class="YL-top">
        
        <div class="YL-width">
        
                       <!--jokul top begin-->
               <div class="YL-header">
                  
                    <!--logo begin-->
                    <div class="header-logo"><a href="javascript:"><img src="../images/logo.png"/></a></div>
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
                         <%--<li><a href="twoStage/featurespot.jsp">景点介绍</a></li>--%>

                             <li>
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                             <c:if test="${datafiles.columnID==1 && datafiles.id==19}">
                                 <a href="attractions?attractions_id=${datafiles.id}">
                                  ${datafiles.conlumnName}
                                 </a>
                             </c:if>
                             </c:forEach>
                         </li>

                         <%--<li><a href="twoStage/featurespot.jsp">旅游服务</a></li>--%>
                         <li><a href="travelService">
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                                 <c:if test="${datafiles.columnID==2 && datafiles.id==35}">
                                     ${datafiles.conlumnName}
                                 </c:if>
                             </c:forEach>
                         </a></li>

                             <%--<li><a href="twoStage/featurespot.jsp">线路推荐</a></li>--%>
                         <li><a href="circuit">
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                                 <c:if test="${datafiles.columnID==3 && datafiles.id==36}">
                                     ${datafiles.conlumnName}
                                 </c:if>
                             </c:forEach>
                         </a></li>
                             <%--<li><a href="../threeLevel/culturalResources.jsp">票务预订</a></li>--%>
                         <li>
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                                 <c:if test="${datafiles.columnID==4 && datafiles.id==42}">
                                 <a href="threeFeaturespot?feature_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                     ${datafiles.conlumnName}
                                 </a>
                                 </c:if>
                             </c:forEach>
                         </li>
                             <%--<li><a href="../threeLevel/culturalResources.jsp">资源文化</a></li>--%>
                         <li>
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                                 <c:if test="${datafiles.columnID==5 && datafiles.id==39}">
                                 <a href="culturalResources?cultural_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                     ${datafiles.conlumnName}
                                 </a>
                                 </c:if>
                             </c:forEach>
                         </li>
                      </ul>
                    </div>
                    <!--头部导航 end-->
               </div>
               <!--jokul top end-->
        </div>
    </div>
    <div class="YL-main">
       
           <div class="YL-width">
              
               
               <!--center begin-->
               <div class="YL-cen">
                  
                   <!--动画以及视频 begin-->
                   <div class="YL-animation-video">
                      
                      <!--幻灯片 begin-->
                      <div class="YL-animation">
                         
                          <div class="animation-box">
                            <a href="../twoStage/picture.html" class="animation-inbox"><img src="../images/banner1.jpg"/></a>
                            <a href="../twoStage/picture.html" class="animation-inbox"><img src="../images/banner2.jpg"/></a>
                          </div>
                          
                          <div class="animation-btn">
                             <a href="javascript:" class="animationLeft"><img src="../images/bannerLeft.png"/></a>
                             <a href="javascript:" class="animationRight"><img src="../images/bannerRight.png"/></a>
                          </div>
                         
                      </div>
                      <!--幻灯片 end-->
                      
                      <!--视频区域 begin-->
                      <div class="YL-video">
                        
                         <!--视频播放区 begin-->
                         <div class="video-file">
                           <embed src="http://www.iqiyi.com/player/20140218112703/loading.swf" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" wmode="opaque" width="265" height="160" loop="true" autostart="true"></embed> 
                         </div>
                         <!--视频播放区 end-->
                         
                         <!--视频按钮 begin-->
                         <div class="video-btn">
                            
                             <ul>
                               <li><a href="javascript:"><img src="../images/video-01.png"/></a><span><a href="javascript:">在线视频</a></span></li>
                               <li class="vodeo-li"><a href="javascript:"><img src="../images/video-02.png"/></a><span><a href="javascript:">全景展示</a></span></li>
                             </ul>
                           
                         </div>
                         <!--视频按钮 end-->
                        
                      </div>
                      <!--视频区域 end-->
                      
                     
                   </div>
                   <!--动画以及视频 end-->
                   
                   <!--左部分 begin-->
                   <div class="YL-scenicLeft">
                     
                      <div class="scenic-top">
                         
                          <!--旅游新闻 begin-->
                          <div class="scenic-new">
                             
                             <div class="scenic-title">
                             
                                <div class="title-name"><span><a href="javascript:">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==13 && datafiles.id==43}">
                                            ${datafiles.conlumnName}
                                        </c:if>
                                    </c:forEach>
                                </a></span><p>scenic&nbsp;news</p></div>
                                
                                <div class="title-li">
                                  
                                   <ul>
                                     <li onmouseover="selectSwtich('',this,'top-dh',0,'select')">
                                         <c:forEach var="datafiles" items="${dataFiles}">
                                             <%--双重条件去重--%>
                                             <c:if test="${datafiles.columnID==6 && datafiles.id==1}">
                                                 ${datafiles.conlumnName}
                                             </c:if>
                                         </c:forEach>
                                         <i class="select-i-r"></i></li>
                                     <li class="select" onmouseover="selectSwtich('',this,'top-dh',1,'select')">
                                         <c:forEach var="datafiles" items="${dataFiles}">
                                             <%--双重条件去重--%>
                                             <c:if test="${datafiles.columnID==7 && datafiles.id==44}">
                                                 ${datafiles.conlumnName}
                                             </c:if>
                                         </c:forEach>
                                         <i class="select-i"></i></li>
                                   </ul>
                                  
                                </div>
                                
                             </div>
                             
                             <div class="scenic-text" id="top-dh0" style="display:none">
                                <ul>

                                    <%--   景区新闻1.1   --%>

                                   <li><i class="scenic-i"></i>
                                        <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==6 && datafiles.id==1}">
                                             <a href="threeActivity11?activity_id1=${datafiles.id}&str_id=${datafiles.columnID}">
                                             ${datafiles.title}
                                             </a>
                                           </c:if>
                                        </c:forEach>

                                  <span>
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==6 && datafiles.id==1}">
                                               ${datafiles.time}
                                           </c:if>
                                        </c:forEach>
                                   </span></li>



                                    <li><i class="scenic-i"></i>
                                        <c:forEach var="datafiles" items="${dataFiles}">
                                            <%--双重条件去重--%>
                                            <c:if test="${datafiles.columnID==6 && datafiles.id==2}">
                                                <a href="threeActivity12?activity_id2=${datafiles.id}&str_id=${datafiles.columnID}">
                                                        ${datafiles.title}
                                                </a>
                                            </c:if>
                                        </c:forEach>
                                      <span>
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==6 && datafiles.id==2}">
                                               ${datafiles.time}
                                           </c:if>
                                       </c:forEach>
                                   </span></li>

                                    <li><i class="scenic-i"></i><a href="../threeLevel/activity.jsp">
                                        <c:forEach var="datafiles" items="${dataFiles}">
                                            <%--双重条件去重--%>
                                            <c:if test="${datafiles.columnID==6 && datafiles.id==3}">
                                                ${datafiles.title}
                                            </c:if>
                                        </c:forEach>
                                    </a><span>
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==6 && datafiles.id==3}">
                                               ${datafiles.time}
                                           </c:if>
                                       </c:forEach>
                                   </span></li>

                                    <li><i class="scenic-i"></i><a href="../threeLevel/activity.jsp">
                                        <c:forEach var="datafiles" items="${dataFiles}">
                                            <%--双重条件去重--%>
                                            <c:if test="${datafiles.columnID==6 && datafiles.id==4}">
                                                ${datafiles.title}
                                            </c:if>
                                        </c:forEach>
                                    </a><span>
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==6 && datafiles.id==4}">
                                               ${datafiles.time}
                                           </c:if>
                                       </c:forEach>
                                   </span></li>

                                    <li><i class="scenic-i"></i><a href="../threeLevel/activity.jsp">
                                        <c:forEach var="datafiles" items="${dataFiles}">
                                            <%--双重条件去重--%>
                                            <c:if test="${datafiles.columnID==6 && datafiles.id==5}">
                                                ${datafiles.title}
                                            </c:if>
                                        </c:forEach>
                                    </a><span>
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==6 && datafiles.id==5}">
                                               ${datafiles.time}
                                           </c:if>
                                       </c:forEach>
                                   </span></li>
                                </ul>
                             </div>
                             
                             <%--<div class="scenic-text" id="top-dh1" style="display:block">--%>
                                <%--<ul>--%>
                                   <%--<li><i class="scenic-i"></i><a href="threeLevel/activity.jsp">2加强组织建设 推动景区跨越发展 以优异的...</a><span>2014.09.09</span></li>--%>
                                   <%--<li><i class="scenic-i"></i><a href="threeLevel/activity.jsp">加强组织建设 推动景区跨越发展 以优异的...</a><span>2014.09.09</span></li>--%>
                                   <%--<li><i class="scenic-i"></i><a href="threeLevel/activity.jsp">加强组织建设 推动景区跨越发展 以优异的...</a><span>2014.09.09</span></li>--%>
                                   <%--<li><i class="scenic-i"></i><a href="threeLevel/activity.jsp">加强组织建设 推动景区跨越发展 以优异的...</a><span>2014.09.09</span></li>--%>
                                   <%--<li><i class="scenic-i"></i><a href="threeLevel/activity.jsp">加强组织建设 推动景区跨越发展 以优异的...</a><span>2014.09.09</span></li>--%>
                                <%--</ul>--%>
                             <%--</div>--%>

                              <div class="scenic-text" id="top-dh1" style="display:block">
                                  <ul>
                                      <li><i class="scenic-i"></i>

                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==44}">
                                          <a href="threeActivity21?activity_id1=${datafiles.id}&str_id=${datafiles.columnID}">
                                                  ${datafiles.title}
                                          </a>
                                              </c:if>
                                          </c:forEach>
                                      <span>
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==44}">
                                                  ${datafiles.time}
                                              </c:if>
                                          </c:forEach>
                                      </span></li>

                                      <li><i class="scenic-i"></i>
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==55}">
                                              <a href="threeActivity22?activity_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                                  ${datafiles.title}
                                              </a>
                                              </c:if>
                                          </c:forEach>
                                      <span>
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==55}">
                                                  ${datafiles.time}
                                              </c:if>
                                          </c:forEach>
                                      </span></li>

                                      <li><i class="scenic-i"></i><a href="../threeLevel/activity.jsp">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==56}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a><span>
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==56}">
                                                  ${datafiles.time}
                                              </c:if>
                                          </c:forEach>
                                      </span></li>

                                      <li><i class="scenic-i"></i><a href="../threeLevel/activity.jsp">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==57}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a><span>
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==57}">
                                                  ${datafiles.time}
                                              </c:if>
                                          </c:forEach>
                                      </span></li>

                                      <li><i class="scenic-i"></i><a href="../threeLevel/activity.jsp">
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==58}">
                                                  ${datafiles.title}
                                              </c:if>
                                          </c:forEach>
                                      </a><span>
                                          <c:forEach var="datafiles" items="${dataFiles}">
                                              <%--双重条件去重--%>
                                              <c:if test="${datafiles.columnID==7 && datafiles.id==58}">
                                                  ${datafiles.time}
                                              </c:if>
                                          </c:forEach>
                                      </span></li>
                                  </ul>
                              </div>



                          </div>
                          <!--旅游新闻 end-->

                          <!--景区公告 begin-->
                          <div class="announce">

                             <div class="announce-title">

                                <div class="title-name"><span><a href="javascript:">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==8 && datafiles.id==6}">
                                            ${datafiles.conlumnName}
                                        </c:if>
                                    </c:forEach>
                                </a></span><p>Announcement</p></div>

                             </div>

                             <div class="announce-text">

                                <ul>
                                   <li><a href="../twoStage/activity.html">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==8 && datafiles.id==6}">
                                               ${datafiles.title}
                                           </c:if>
                                       </c:forEach>
                                   </a></li>
                                   <li><a href="../twoStage/activity.html">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==8 && datafiles.id==7}">
                                               ${datafiles.title}
                                           </c:if>
                                       </c:forEach>
                                   </a></li>
                                   <li><a href="../twoStage/activity.html">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==8 && datafiles.id==7}">
                                               ${datafiles.title}
                                           </c:if>
                                       </c:forEach>
                                   </a></li>
                                   <li><a href="../twoStage/activity.html">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==8 && datafiles.id==9}">
                                               ${datafiles.title}
                                           </c:if>
                                       </c:forEach>
                                   </a></li>
                                </ul>

                             </div>

                          </div>
                          <!--景区公告 end-->

                      </div>

                      <!--线路推荐 begin-->
                      <div class="line-recommend">

                         <div class="recommend-title">

                           <div class="title-name"><span><a href="javascript:">
                               <c:forEach var="datafiles" items="${dataFiles}">
                                   <%--双重条件去重--%>
                                   <c:if test="${datafiles.columnID==14 && datafiles.id==46}">
                                       ${datafiles.conlumnName}
                                   </c:if>
                               </c:forEach>
                           </a></span><p>scenic&nbsp;news</p></div>

                           <div class="title-li">

                               <ul>
                                 <li onmouseover="selectSwtich('',this,'reco-dh',0,'select')">
                                     <c:forEach var="datafiles" items="${dataFiles}">
                                         <%--双重条件去重--%>
                                         <c:if test="${datafiles.columnID==9 && datafiles.id==10}">
                                             ${datafiles.conlumnName}
                                         </c:if>
                                     </c:forEach>
                                     <i class="select-i-r"></i></li>
                                 <li class="select" onmouseover="selectSwtich('',this,'reco-dh',1,'select')">
                                     <c:forEach var="datafiles" items="${dataFiles}">
                                         <%--双重条件去重--%>
                                         <c:if test="${datafiles.columnID==10 && datafiles.id==45}">
                                             ${datafiles.conlumnName}
                                         </c:if>
                                     </c:forEach>
                                     <i class="select-i"></i></li>
                               </ul>

                            </div>

                         </div>

                         <div class="recommend-text" id="reco-dh0" style="display:none">

                           <dl>
                             <dt><a href="../twoStage/circuit.html">
                                 <c:forEach var="datafiles" items="${dataFiles}">
                                     <%--双重条件去重--%>
                                     <c:if test="${datafiles.columnID==9 && datafiles.id==10}">
                                         <img src="${datafiles.img}">
                                     </c:if>
                                 </c:forEach>
                             </a></dt>
                             <%--<dd>--%>
                                <%--<span class="recommend-t"><a href="../twoStage/circuit.html">1冰川地质公园游</a></span>--%>
                                <%--<div class="recommend-txt">加强组织建设 推动景区跨越发展加强组织建设 推动景区跨越...</div>--%>

                               <dd>
                                <span class="recommend-t"><a href="TwoCircuit11">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==9 && datafiles.id==10}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==9 && datafiles.id==10}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>

                             <%--</dd>--%>
                           </dl>

                           <dl>
                             <dt><a href="../twoStage/circuit.jsp">
                                 <c:forEach var="datafiles" items="${dataFiles}">
                                     <%--双重条件去重--%>
                                     <c:if test="${datafiles.columnID==9 && datafiles.id==11}">
                                         <img src="${datafiles.img}">
                                     </c:if>
                                 </c:forEach>
                             </a></dt>
                               <dd>
                                <span class="recommend-t"><a href="TwoCircuit12">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==9 && datafiles.id==11}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==9 && datafiles.id==11}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                           <dl>
                             <dt><a href="../twoStage/circuit.html"><img src="../images/img-01.jpg"/></a></dt>
                               <dd>
                                <span class="recommend-t"><a href="twoStage/circuit.html">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==9 && datafiles.id==12}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==9 && datafiles.id==12}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                           <dl>
                             <dt><a href="../twoStage/circuit.html"><img src="../images/img-01.jpg"/></a></dt>
                               <dd>
                                <span class="recommend-t"><a href="twoStage/circuit.html">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==9 && datafiles.id==13}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==9 && datafiles.id==13}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                         </div>

                         <div class="recommend-text" id="reco-dh1" style="display:block">

                           <dl>
                             <dt><a href="../twoStage/circuit.html"><img src="../images/img-01.jpg"/></a></dt>
                               <dd>
                                <span class="recommend-t"><a href="TwoCircuit21">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==10 && datafiles.id==45}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==10 && datafiles.id==45}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                           <dl>
                             <dt><a href="../twoStage/circuit.html"><img src="../images/img-01.jpg"/></a></dt>
                               <dd>
                                <span class="recommend-t"><a href="TwoCircuit22">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==10 && datafiles.id==59}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==10 && datafiles.id==59}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                           <dl>
                             <dt><a href="../twoStage/circuit.html">
                                 <c:forEach var="datafiles" items="${dataFiles}">
                                     <%--双重条件去重--%>
                                     <c:if test="${datafiles.columnID==10 && datafiles.id==60}">
                                         <img src="${datafiles.img}">
                                     </c:if>
                                 </c:forEach>
                             </a></dt>
                               <dd>
                                <span class="recommend-t"><a href="twoStage/circuit.html">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==10 && datafiles.id==60}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==10 && datafiles.id==60}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                           <dl>
                             <dt><a href="../twoStage/circuit.html"><img src="../images/img-01.jpg"/></a></dt>
                               <dd>
                                <span class="recommend-t"><a href="twoStage/circuit.html">
                                    <c:forEach var="datafiles" items="${dataFiles}">
                                        <%--双重条件去重--%>
                                        <c:if test="${datafiles.columnID==10 && datafiles.id==61}">
                                            ${datafiles.title}
                                        </c:if>
                                    </c:forEach>
                                </a></span>
                                   <div class="recommend-txt">
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==10 && datafiles.id==61}">
                                               ${datafiles.main}
                                           </c:if>
                                       </c:forEach>
                                   </div>
                               </dd>
                           </dl>

                         </div>

                      </div>
                      <!--线路推荐 end-->

                      <!--广告 begin-->
                      <div class="YL-advert"><a href="javascript:"><img src="../images/img-02.jpg"/></a></div>
                      <!--广告 end-->

                      <!--两条推荐 begin-->
                      <div class="YL-recom recom-back">
                         <div class="recom-title"><a href="javascript:">
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                                 <c:if test="${datafiles.columnID==11 && datafiles.id==14}">
                                     ${datafiles.conlumnName}
                                 </c:if>
                             </c:forEach>
                         </a></div>
                         <div class="recom-text">
                           <span><img src="../images/img-03.jpg"/></span>
                           <ul>
                              <li><i class="recom-ico"><img src="../images/ico-02.jpg"/></i>
                                  <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==11 && datafiles.id==14}">
                                  <a href="threeActivityHotel?hotel_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                          ${datafiles.title}
                                  </a>
                                      </c:if>
                                  </c:forEach>
                             </li>
                              <li><i class="recom-ico"><img src="../images/ico-02.jpg"/></i>
                                  <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==11 && datafiles.id==15}">
                                  <a href="threeActivityHotel2?hotel_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                          ${datafiles.title}
                                  </a>
                                      </c:if>
                                  </c:forEach>
                             </li>
                           </ul>
                         </div>
                      </div>

                      <div class="YL-recom">
                         <div class="recom-title"><a href="javascript:">
                             <c:forEach var="datafiles" items="${dataFiles}">
                                 <%--双重条件去重--%>
                                 <c:if test="${datafiles.columnID==12 && datafiles.id==17}">
                                     ${datafiles.conlumnName}
                                 </c:if>
                             </c:forEach>
                         </a></div>
                         <div class="recom-text">
                           <span>
                               <c:forEach var="datafiles" items="${dataFiles}">
                                   <%--双重条件去重--%>
                                   <c:if test="${datafiles.columnID==12 && datafiles.id==17}">
                                       <img src="${datafiles.img}">
                                   </c:if>
                               </c:forEach>
                           </span>
                           <ul>
                              <li><i class="recom-ico"><img src="../images/ico-02.jpg"/></i>
                                  <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==12 && datafiles.id==17}">
                                  <a href="threeActivityRestaurant?hotel_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                          ${datafiles.title}
                                  </a>
                                      </c:if>
                                  </c:forEach>
                              </li>
                              <li><i class="recom-ico"><img src="../images/ico-02.jpg"/></i>
                                  <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==11 && datafiles.id==16}">
                                  <a href="threeActivityHotel3?hotel_id=${datafiles.id}&str_id=${datafiles.columnID}">
                                          ${datafiles.title}
                                  </a>
                                      </c:if>
                                  </c:forEach>
                              </li>
                           </ul>
                         </div>
                      </div>
                      <!--两条推荐 end-->

                   </div>
                   <!--左部分 end-->

                   <!--右部分 begin-->
                   <div class="YL-scenicRight">

                     <!--链接 begin-->
                     <div class="scenic-ico">
                         <ul>
                            <li><a href="../twoStage/featureSpot.jsp"><img src="../images/feature-01.png"/></a><span><a href="../twoStage/featureSpot.jsp">玉龙景点</a></span></li>
                            <li><a href="../threeLevel/featurespot.jsp"><img src="../images/feature-021.png"/></a><span><a href="../threeLevel/featurespot.jsp">门&nbsp;&nbsp;票</a></span></li>
                            <li><a href="../threeLevel/tourismIndex.html"><img src="../images/feature-03.png"/></a><span><a href="../threeLevel/tourismIndex.html">景区交通</a></span></li>
                            <li><a href="../twoStage/travelService.jsp"><img src="../images/feature-04.png"/></a><span><a href="../twoStage/travelService.jsp">客服中心</a></span></li>
                            <li><a href="../threeLevel/tourismIndex.html"><img src="../images/feature-05.png"/></a><span><a href="../threeLevel/tourismIndex.html">旅游指数</a></span></li>
                            <li><a href="../threeLevel/tourismIndex.html"><img src="../images/feature-06.png"/></a><span><a href="../threeLevel/tourismIndex.html">问卷调查</a></span></li>
                         </ul>
                     </div>
                     <!--链接 end-->

                     <!--图片按钮 begin-->
                     <div class="scenic-btn">
                         <%--在线预订门票--%>
                       <a href="featureSpot"><img src="../images/img-04.png"/></a>
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
                   <!--右部分 end-->

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
                         <span class="share-ico"><a href="javascript:"><img src="../images/ico-03.png"/></a><a href="javascript:"><img src="../images/ico-04.png"/></a><a href="javascript:"><img src="../images/ico-05.png"/></a><a href="javascript:"><img src="../images/ico-06.png"/></a><a href="javascript:"><img src="../images/ico-07.png"/></a><a href="javascript:"><img src="../images/ico-08.png"/></a></span>
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
<script type="text/jscript" src="../js/mouse.js"></script>
</body>
</html>
