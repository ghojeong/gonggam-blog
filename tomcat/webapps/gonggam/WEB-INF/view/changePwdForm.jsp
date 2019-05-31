<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>암호 변경</title>
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
    <jsp:include page="headerMenu.jsp" />
    <div class="ui middle aligned center aligned grid max-height">
      <div class="six wide column">
        <h1 class="ui header">암호 변경</h1>
        <div class="ui vertical animated negative button" tabindex="0"
          onclick="location.href='article/list.do'"
          style="float:right">
            <div class="visible content">취소</div>
          <div class="hidden content">
            <i class="x icon"></i>
          </div>
        </div>
        <form class="ui form" action="changePwd.do" method="post">
          <button class="ui positive button" type="submit" value="암호 변경" style="float:right">암호 변경</button>
          <div class="field">
            <label>현재 암호</label>
            <input placeholder="현재 암호" type="password" name="curPwd" />
            <div class="err">
                <c:if test="${errors.curPwd}">현재 암호를 입력하세요.</c:if>
                <c:if test="${errors.badCurPwd}">
                  현재 암호가 일치하지 않습니다.
                </c:if>
            </div>
          </div>
          <div class="field">
            <label>새 암호</label>
            <input placeholder="새 암호" type="password" name="newPwd" />
            <div class="err">
              <c:if test="${errors.confirmPassword}">확인을 입력하세요.<br><br></c:if>
              <c:if test="${errors.newPwd}">새 암호를 입력하세요.</c:if>
            </div>
          </div>
          <br>
        </form>
        <div class="ui vertical animated negative button" tabindex="0">
          <div class="visible content">회원탈퇴</div>
          <div class="hidden content">
            <i class="trash alternate outline icon"></i>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
