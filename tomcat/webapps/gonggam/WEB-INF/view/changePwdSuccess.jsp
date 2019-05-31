<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>암호 변경</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <style type="text/css"><jsp:include page="css/common.css"/></style>
</head>
  <body>
    <div class="ui middle aligned center aligned grid max-height">
      <div class="six wide column">
        <h1 class="ui header">암호를 변경했습니다.</h1>
        <br>
        <div
          tabindex="0"
          class="massive ui animated button"
          onclick="location.href='login.do'"
        >
          <div class="visible content">로그인 페이지로 이동</div>
          <div class="hidden content">
            <i class="right arrow icon"></i>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
