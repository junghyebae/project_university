<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="category-content col-sm-9">
    <h2 class="category-title">학교소개</h2>


<!-- body -->
	<div id="postlist">        
        <div class="panel">
                <div class="panel-heading">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-sm-9">
                                <h3 class="pull-left">${dto.title }</h3>
                            </div>
                            <div class="col-sm-3">
                                <h4 class="pull-right">
                                <small><em>${dto.wdate }</em></small>
                                </h4>
                            </div>
                        </div>
                        <hr style="margin-top: 0;    margin-bottom: 0.5em;    border-top-color: #ccc;">
                        <c:if test="${dto.filename != '-1' }">
                        		<span><img src="${pageContext.request.contextPath }/upload/intro/${dto.filename}"  
	                			class="media-object" alt="Post" align="middle" ></span>
                        </c:if>
                    </div>
                </div>
            <div class="panel-body">
                <span>${dto.content }</span>
            </div>
          <div class="panel-footer">
				<button type="button" class="btn btn-info btn-xs" onclick="location.href='introBbs.do'">돌아가기</button>
               
               <c:if test="${login.user_auth ==300 }">
               <div style="    float: right;    padding-right: 1em;">   	
				<button type="button" class="btn btn-warning btn-xs" onclick="location.href='introBbsUpdate.do?seq=${dto.intro_bbs_seq}'">수정</button>
                <button type="button" class="btn btn-danger btn-xs" onclick="location.href='introBbsDelete.do?seq=${dto.intro_bbs_seq}'">삭제</button>
               </div>
               </c:if> 
          </div>
       </div>  
   </div>
    

    
  </section>