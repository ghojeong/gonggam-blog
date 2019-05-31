<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="u"
tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
  <head>
    <title>게시글 읽기</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <style type="text/css"><jsp:include page="css/common.css"/></style>
  </head>
  <body>
    <div class="ui middle aligned center aligned grid max-height">
      <div class="twelve wide column">
        <h1 class="ui header">게시글 읽기</h1>
        <table class="ui definition table">
          <tbody>
            <tr>
              <td>번호</td>
              <td>${articleData.article.number}</td>
            </tr>
            <tr>
              <td class="collapsing">작성자</td>
              <td>${articleData.article.writer.name}</td>
            </tr>
            <tr>
              <td>제목</td>
              <td><c:out value="${articleData.article.title}" /></td>
            </tr>
            <tr>
              <td>내용</td>
              <td><u:pre value="${articleData.content}" /></td>
            </tr>
          </tbody>
        </table>
        <div>
          <c:set
            var="pageNo"
            value="${empty param.pageNo ? '1' : param.pageNo}"
          />
          <div
            tabindex="0"
            class="ui vertical animated button"
            onclick="location.href='list.do?pageNo=${pageNo}'"
          >
            <div class="visible content">목록</div>
            <div class="hidden content">
              <i class="list ul icon"></i>
            </div>
          </div>
          <c:if test="${authUser.id == articleData.article.writer.id}">
            <div
              tabindex="0"
              class="ui vertical animated button"
              onclick="location.href='modify.do?no=${articleData.article.number}'"
            >
              <div class="visible content">게시글수정</div>
              <div class="hidden content">
                <i class="edit icon"></i>
              </div>
            </div>
            <div
              tabindex="0"
              class="ui vertical animated button"
              onclick="location.href='delete.do?no=${articleData.article.number}'"
            >
              <div class="visible content">게시글삭제</div>
              <div class="hidden content">
                <i class="trash alternate icon"></i>
              </div>
            </div>
          </c:if>
        </div>
      </div>
    </div>
  </body>
</html>
