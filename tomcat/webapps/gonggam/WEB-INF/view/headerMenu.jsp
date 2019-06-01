<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<div class="ui teal inverted menu">
  <a class="item" href="list.do"><i class="home icon"></i></a>
  <div class="right menu">
    <div class="active item">
      ${authUser.name}님, 안녕하세요.
    </div>
    <a class="item" href="${ctxPath}/changePwd.do">회원정보 수정</a>
    <a class="item" href="${ctxPath}/logout.do">로그아웃</a>
  </div>
</div>
