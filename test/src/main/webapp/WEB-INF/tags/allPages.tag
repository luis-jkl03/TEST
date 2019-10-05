<%@ tag body-content="scriptless" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sk" tagdir="/WEB-INF/tags"%>

<%@ attribute name="pageTitle" required="true" type="java.lang.String" %>
<%@ attribute name="page_css" fragment="true" %>
<%@ attribute name="page_js" fragment="true" %>

<sk:baseBody pageTitle="${pageTitle} ">

	<jsp:attribute name="lib_css">
		<link rel="stylesheet" href="<c:url value="/resources/css/all_pages.css" />" />
	</jsp:attribute>
	
	<jsp:attribute name="lib_js">
	<script src="<c:url value="/webjars/jquery/3.1.1/jquery.js" />"></script>
		<script src="<c:url value="/resources/js/all_pages.js" />"></script>
	</jsp:attribute>
	
	<jsp:attribute name="page_css">
		<jsp:invoke fragment="page_css"/>
	</jsp:attribute>
	<jsp:attribute name="page_js">
		<jsp:invoke fragment="page_js"/>
	</jsp:attribute>
	<jsp:body>
		<jsp:doBody/>
	</jsp:body>
</sk:baseBody>