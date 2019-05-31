<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>게시글 수정</title>
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
        <h1 class="ui header">게시글 수정</h1>
        <form class="ui form" action="modify.do" method="post">
          <input type="hidden" name="no" value="${modReq.articleNumber}" />
          <div class="field">
            <div class="ui label">
              글 번호:
              <div class="detail">${modReq.articleNumber}</div>
            </div>
          </div>
          <div class="field">
            <label>제목</label>
            <input
              placeholder="제목"
              type="text"
              name="title"
              value="${modReq.title}"
            />
            <div class="err">
              <c:if test="${errors.title}">제목을 입력하세요.</c:if>
            </div>
          </div>
          <div class="field">
            <label>내용</label>
            <textarea name="content" rows="5" cols="30">
                ${modReq.content}
            </textarea>
          </div>
          <br />
          <button class="ui teal button" type="submit" value="글 수정">
            글 수정
          </button>
        </form>
      </div>
    </div>
  </body>
</html>
