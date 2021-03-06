<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="utf-8"/> 
<style>
#news > div.home_list > ul > li > div > div > h3 {
	overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    line-height: 1.3em;
    height: 2.4em;
}
#news > div.home_list > ul > li > div > div > div {
	overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
    line-height: 1.3em;
    height: 3.6em;
}
</style>
<section class="home-area">
    <div class="home_content">
        <div class="container">
            <div id="news" class="row">
                <div class="col-sm-12"><h2 class="sub_title">LATEST NEWS</h2></div>
                <div class="home_list">
                    <ul>
                    	<c:set var="doneLoop" value="false"/>	
                    	<c:forEach items="${todayList }" var="today" varStatus="status">
                    	<c:if test="${not doneLoop}">
                        <li class="col-md-3 col-sm-6 col-xs-12">
                            <div class="thumbnail">
                            	<div class="col-sm-12 centered" style="height: 180px;overflow: hidden;">
                                <a href="${pageContext.request.contextPath }/today/detail.do?seq=${today.bbsSeq}">
                                	<img class="img-responsive" src="${pageContext.request.contextPath }/upload/file/${today.bbsStoredFileName}" alt="Post">
                                </a>
                                </div>
                                <div class="caption">
                                    <h3 class="col-sm-11"><a href="${pageContext.request.contextPath }/today/detail.do?seq=${today.bbsSeq}">${today.bbsTitle }</a></h3>
                                    <div class="col-sm-12">${today.bbsContent }</div>
                                    <a href="${pageContext.request.contextPath }/today/detail.do?seq=${today.bbsSeq}" class="btn btn-link" role="button">More</a>
                                </div>
                            </div>
                        </li>
                        </c:if>
                        <c:if test="${status.count == 4 }">
                        	<c:set var="doneLoop" value="true"/>
                        </c:if>
                        </c:forEach>                                
                    </ul>
                </div>
                
                <div class="col-sm-9 home_bottom">
                    <h2 class="sub_title">협력업체</h2>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="carousel slide" data-ride="carousel" data-type="multi" data-interval="6000" id="myCarousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-md-2 col-sm-6 col-xs-12 p10">
                                        <a href="https://docs.oracle.com/javase/tutorial/"><img src="img/java.png" class="img-responsive" alt="Reference"></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <a href="https://spring.io/docs"><img src="img/spring.jpg" class="img-responsive" alt="Reference"></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <a href="http://maven.apache.org/guides/"><img src="img/maven.jpg" class="img-responsive" alt="Reference"></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <a href="https://docs.oracle.com/en/"><img src="img/oracle.jpg" class="img-responsive" alt="Reference"></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <a href="https://help.github.com/"><img src="img/github.jpg" class="img-responsive" alt="Reference"></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-2 col-sm-6 col-xs-12">
                                        <a href="https://www.w3schools.com/bootstrap/bootstrap_ref_all_classes.asp"><img src="img/bootstrap.jpg" class="img-responsive" alt="Reference"></a>
                                    </div>
                                </div>                               
                            </div>
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
                        </div>
                    </div>                            
                </div>
                <div class="col-sm-3">
                    <h2 class="sub_title w10">CALL YOU</h2>
                    <div class="clearfix"></div>
                    <div class="login-form-1">
                        <form id="login-form" class="text-left">
                            <div class="login-form-main-message"></div>
                            <div class="main-login-form">
                                <div class="login-group">
                                    <div class="form-group">
                                        <label for="ad" class="sr-only">Name</label>
                                        <input type="text" class="form-control" id="ad" name="ad" placeholder="Name" value="상담 센터" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label for="tel" class="sr-only">Phone Number</label>
                                        <input type="text" class="form-control" id="tel" name="tel" placeholder="Phone Number" value="국번없이 114" readonly="readonly">
                                    </div>
                                </div>
                                <button type="submit" class="login-button" style="    display: none;"><i class="fa fa-chevron-right"></i></button>
                            </div>
                        </form>
                    </div>                            
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    $('.carousel[data-type="multi"] .item').each(function(){
      var next = $(this).next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
      next.children(':first-child').clone().appendTo($(this));

      for (var i=0;i<4;i++) {
        next=next.next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }

        next.children(':first-child').clone().appendTo($(this));
      }
    });        
</script>