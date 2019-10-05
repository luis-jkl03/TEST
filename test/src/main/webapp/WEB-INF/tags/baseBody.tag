<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="pageTitle" required="true" type="java.lang.String" %>
<%@ attribute name="lib_css" fragment="true" %>
<%@ attribute name="lib_js" fragment="true" %>
<%@ attribute name="page_css" fragment="true" %>
<%@ attribute name="page_js" fragment="true" %>

<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>${pageTitle}</title>
		
		<jsp:invoke fragment="lib_css"/>
		<jsp:invoke fragment="page_css"/>
		
		<jsp:invoke fragment="lib_js"/>
		<jsp:invoke fragment="page_js"/>
	</head>
	<body>
		<div class="container">
			<div class="work">
			<h1>${pageTitle}</h1>
				<jsp:doBody/>
			</div>
		</div>
	</body>
</html>
