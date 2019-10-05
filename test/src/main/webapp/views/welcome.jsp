<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sk" tagdir="/WEB-INF/tags"%>

<sk:allPages pageTitle="Mi pagina">
	<jsp:attribute name="page_css">
		<link rel="stylesheet" href="<c:url value="/resources/css/page.css" />" />
	</jsp:attribute>
	<jsp:attribute name="page_js">
		<script src="<c:url value="/resources/js/page.js" />"></script>
	</jsp:attribute>
	<jsp:body>
		<div id="data1" class="data">
			<label>HOLAAAA!!!</label>
		</div>
	</jsp:body>
</sk:allPages>