<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>가입</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <style type="text/css">
      <jsp:include page="css/common.css"/>
      <jsp:include page="css/commonForm.css"/>
    </style>
  </head>
  <body>
    <div class="ui middle aligned center aligned grid max-height">
      <div class="six wide column">
        <h1 class="ui header">회원가입</h1>
        <form class="ui form" action="join.do" method="post">
          <div class="field">
            <label>아이디</label>
            <input
              placeholder="아이디"
              type="text"
              name="id"
              value="${param.id}"
            />
            <div class="err">
                <c:if test="${errors.id}">아이디를 입력하세요.</c:if>
                <c:if test="${errors.duplicateId}"
                  >이미 사용중인 아이디입니다.</c:if
                >
            </div>
          </div>
          <div class="field">
            <label>이름</label>
            <input
              placeholder="이름"
              type="text"
              name="name"
              value="${param.name}"
            />
            <div class="err">
                <c:if test="${errors.name}">이름을 입력하세요.</c:if>
            </div>
          </div>
          <div class="field">
            <label>암호</label>
            <input placeholder="암호" type="password" name="password" />
            <div class="err">
                <c:if test="${errors.password}">암호를 입력하세요.</c:if>
            </div>
          </div>
          <div class="field">
            <label>확인</label>
            <input placeholder="확인" type="password" name="confirmPassword" />
            <div class="err">            <c:if test="${errors.confirmPassword}">확인을 입력하세요.<br><br></c:if>
              <c:if test="${errors.notMatch}"
                >암호와 확인이 일치하지 않습니다.</c:if
              ></div>
          </div>
          <button class="ui positive button" type="submit">가입</button>
        </form>
        <div class="ui vertical animated negative button" tabindex="0"
          onclick="location.href='login.do'"
          style="margin-top:10px">
            <div class="visible content">취소</div>
          <div class="hidden content">
            <i class="x icon"></i>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
