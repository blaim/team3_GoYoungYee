<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<p>beautiful</p>

<!-- 이미지접근하는 코드. 처음에 설정 해둔 위치에 더해서 찾아줌 -->
<img src = "${pageContext.request.contextPath}/resources/images/test.jpg" />
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
