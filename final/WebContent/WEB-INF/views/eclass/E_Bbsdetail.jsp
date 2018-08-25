<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="category-content col-sm-9">
	<div id="postlist">        
        <div class="panel">
                <div class="panel-heading">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class="pull-left">${edto.title }</h3>
                            </div>                                
                            <div class="col-sm-12">
                                <h4 class="pull-right">
                                <small>${edto.wdate }</small>
                                </h4>
                            </div>
                            <div class="col-sm-12">
                                <h4 class="pull-right">
                                <small>${edto.user_id }</small>
                                </h4>
                            </div>
                        </div>
                        <hr style="margin-top: 0;    margin-bottom: 0.5em;    border-top-color: #ccc;">
                        <c:if test="${edto.filename != '-1' }">
                        <div class="row" style="text-align: -webkit-auto;">
                        	<div class="col-sm-2">
                        		<span>첨부파일:</span>
                        	</div>
                        	<div class="col-sm-10">
                        		<span><a href="${pageContext.request.contextPath }/upload/${edto.filename}" download="${edto.org_filename }">${edto.org_filename }</a></span>
                        	</div>
                        </div>
                        </c:if>
                    </div>
                </div>
	            <div class="panel-body">
	                <span>${edto.content }</span>
	            </div>
  			<div class="panel-footer">
  			<c:if test="${login.user_id eq edto.user_id }">
                <span class="label label-default"><a href="./E_Bbsupdate.do?seq=${edto.eclass_notice_bbs_seq }&sub_seq=${param.sub_seq}">수정</a></span>
                <span class="label label-default"><a href="./E_Bbsdelete.do?seq=${edto.eclass_notice_bbs_seq }&sub_seq=${param.sub_seq}&page=${param.page}">삭제</a></span>
            </c:if>
            </div>
        </div>
    </div>
    <div style="text-align: right; font-size: 20;">
	     <span><a href="./E_Pdslist.do?seq=${epds.eclass_pds_bbs_seq }&sub_seq=${param.sub_seq}"><img src="${pageContext.request.contextPath}/img/list.png"></a></span>
    </div>
</section>
    
