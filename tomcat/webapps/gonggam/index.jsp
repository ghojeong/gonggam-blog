<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>회원제 게시판 예제</title>
</head>
<body>
<u:isLogin>
	<script>location="article/list.do"</script>
</u:isLogin>
<u:notLogin>
	<script>location="login.do"</script>
</u:notLogin>
<br/>
</body>
</html>
