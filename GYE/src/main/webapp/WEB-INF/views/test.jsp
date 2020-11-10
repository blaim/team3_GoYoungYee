<!-- test용도
2017038057 임경수 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>none</title>
<%! String calc; %>

<ul>
	<c:forEach var="tmp" items="${test}">
		<li>${tmp}</li>
	</c:forEach>
</ul>

</head>
<body>

</body>
</html>