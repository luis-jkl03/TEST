<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="base" tagdir="/WEB-INF/tags"%>

<base:allPages pageTitle="Soy Index">
	<jsp:attribute name="page_css">
		<link rel="stylesheet" href="<c:url value="/resources/css/index.css" />" />
	</jsp:attribute>
	<jsp:attribute name="page_js">
		<script src="<c:url value="/resources/js/index.js" />"></script>
	</jsp:attribute>
	<jsp:body>
		<div id="data1" class="data">
			<label>Soy Index</label>
		</div>
	</jsp:body>
</base:allPages>