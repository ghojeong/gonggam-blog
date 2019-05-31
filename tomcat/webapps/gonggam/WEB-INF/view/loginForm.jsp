<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>로그인</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <style type="text/css">
      <jsp:include page="css/loginForm.css"/>
    </style>
    <script type="text/javascript">
      <jsp:include page="js/loginForm.js"/>
    </script>
  </head>
  <body>
    <div class="ui middle aligned center aligned grid">
      <div class="six wide column">
        <h1 class="ui header">로그인</h1>
        <form action="login.do" method="post"
          class="ui large form"
        >
          <div class="ui stacked secondary  segment">
            <div class="field">
              <div class="ui left icon input">
                <i class="user icon"></i>
                <input type="text" name="id" value="${param.id}" placeholder="아이디" />
              </div>
            </div>
            <div class="field">
              <div class="ui left icon input">
                <i class="lock icon"></i>
                <input type="password" name="password" placeholder="암호" />
              </div>
            </div>
            <input class="ui fluid large teal submit button" type="submit" value="로그인" />
          </div>
        </form>
        <div class="ui message">
          <a href="join.do">회원가입</a>
        </div>
        <div class="content err-msg">
          <c:if test="${errors.idOrPwNotMatch}">
            아이디와 암호가 일치하지 않습니다.
          </c:if>
          <c:if test="${errors.id}">아이디를 입력하세요.<br><br></c:if>
          <c:if test="${errors.password}">암호를 입력하세요.</c:if>
        </div>
      </div>
    </div>
  </body>
</html>
