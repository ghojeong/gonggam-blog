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
    <style type="text/css">
      <jsp:include page="css/common.css"/>
      <jsp:include page="css/commonForm.css"/>
    </style>
  </head>
  <body>
    <jsp:include page="headerMenu.jsp" />
    <div class="ui middle aligned center aligned grid max-height">
      <div class="twelve wide column">
        <h1 class="ui header">게시글 쓰기</h1>
        <div class="ui vertical animated negative button" tabindex="0"
          onclick="location.href='list.do'"
          style="float:right">
            <div class="visible content">취소</div>
          <div class="hidden content">
            <i class="x icon"></i>
          </div>
        </div>
        <form class="ui form" action="write.do" method="post">
          <button class="ui positive button" type="submit" value="새 글 등록"
            style="float:right">
            새 글 등록
          </button>
          <div class="field">
            <label>제목</label>
            <input
              placeholder="제목"
              type="text"
              name="title"
              value="${param.title}"
            />
            <div class="err">
              <c:if test="${errors.title}">제목을 입력하세요.</c:if>
            </div>
          </div>
          <div class="field">
            <label>내용</label>
            <textarea name="content" rows="5" cols="30">
              ${param.title}
            </textarea>
          </div>
          <br>
        </form>
      </div>
    </div>
  </body>
</html>
