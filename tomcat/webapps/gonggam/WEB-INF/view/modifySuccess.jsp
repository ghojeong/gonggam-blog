<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>게시글 수정</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <style type="text/css"><jsp:include page="css/common.css"/></style>
  </head>
  <body>
    <jsp:include page="headerMenu.jsp" />
    <div class="ui middle aligned center aligned grid max-height">
      <div class="six wide column">
        <h1 class="ui header">게시글을 수정했습니다.</h1>
        <br>
        ${ctxPath = pageContext.request.contextPath ; ''}
        <br>
        <div
          tabindex="0"
          class="ui vertical animated button"
          onclick="location.href='${ctxPath}/article/list.do'"
        >
          <div class="visible content">게시글목록보기</div>
          <div class="hidden content">
            <i class="list ul icon"></i>
          </div>
        </div>
        <div
        tabindex="0"
        class="ui vertical animated button"
        onclick="location.href='${ctxPath}/article/read.do?no=${modReq.articleNumber}'"
      >
        <div class="visible content">게시글내용보기</div>
        <div class="hidden content">
          <i class="file alternate icon"></i>
        </div>
      </div>
      </div>
    </div>
  </body>
</html>
