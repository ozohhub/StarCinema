<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/main/icon/lotgv.ico" />
	<c:choose>
		<c:when test="${formpath == 'main'}">
			<div id="header_section" class="header ty3" style="z-index: 2;">
				<%@ include file="common/header.jsp" %>
			</div>
		</c:when>
		<c:otherwise>
			<div id="header_section" class="header">
				<%@ include file="common/header2.jsp" %>
			</div>
		</c:otherwise>
	</c:choose>
	<c:import url="/${formpath }" /> 
	
	<div id="footer_section" class="footer" style="background-color: white;">
		<%@ include file="common/footer.jsp" %>
	</div>