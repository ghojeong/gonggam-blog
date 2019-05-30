<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>게시글 쓰기</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
  </head>
  <body>
    <form action="write.do" method="post">
      <p>
        제목:<br /><input type="text" name="title" value="${param.title}" />
        <c:if test="${errors.title}">제목을 입력하세요.</c:if>
      </p>
      <p>
        내용:<br />
        <textarea name="content" rows="5" cols="30">${param.title}</textarea>
      </p>
      <input type="submit" value="새 글 등록" />
    </form>
  </body>
</html>
