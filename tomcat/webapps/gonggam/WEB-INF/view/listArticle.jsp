<%@ page contentType="text/html; charset=utf-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>게시글 목록</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <style type="text/css">
      <jsp:include page="css/common.css"/>
      <jsp:include page="css/listArticle.css"/>
    </style>
  </head>
  <body>
    <jsp:include page="headerMenu.jsp" />
    <div class="ui middle aligned center aligned grid max-height">
      <div class="fifteen wide column">
        <div
          tabindex="0"
          class="ui vertical animated button"
          onclick="location.href='write.do'"
        >
          <div class="visible content">게시글쓰기</div>
          <div class="hidden content">
            <i class="pencil alternate icon"></i>
          </div>
        </div>
        <table class="ui celled table">
          <thead>
            <tr>
              <th style="width:5%">번호</th>
              <th style="width:80%">제목</th>
              <th style="width:10%">작성자</th>
              <th style="width:5%">조회수</th>
            </tr>
          </thead>
          <tbody>
            <c:if test="${articlePage.hasNoArticles()}">
              <tr>
                <td colspan="4">게시글이 없습니다.</td>
              </tr>
            </c:if>
            <c:forEach var="article" items="${articlePage.content}">
              <tr
                onclick="location.href='read.do?no=${article.number}&pageNo=${articlePage.currentPage}'"
              >
                <td>${article.number}</td>
                <td>
                  <c:out value="${article.title}" />
                </td>
                <td>${article.writer.name}</td>
                <td>${article.readCount}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        <c:if test="${articlePage.hasArticles()}">
          <div class="ui pagination menu">
            <c:if test="${articlePage.startPage > 5}">
              <a
                class="icon item"
                href="list.do?pageNo=${articlePage.startPage - 5}"
              >
                <i class="left chevron icon"></i>
              </a>
            </c:if>
            <c:forEach
              var="pNo"
              begin="${articlePage.startPage}"
              end="${articlePage.endPage}"
            >
              <a class="item" href="list.do?pageNo=${pNo}">${pNo}</a>
            </c:forEach>
            <c:if test="${articlePage.endPage < articlePage.totalPages}">
              <a
                class="icon item"
                href="list.do?pageNo=${articlePage.startPage + 5}"
              >
                <i class="right chevron icon"></i>
              </a>
            </c:if>
          </div>
        </c:if>
      </div>
    </div>
  </body>
</html>
