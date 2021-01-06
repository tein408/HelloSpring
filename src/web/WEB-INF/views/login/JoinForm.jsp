<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JoinForm</title>
</head>
<body>

<c:if test="${result==1}">
    <script type="text/javascript">
        alert("이미 존재하는 아이디");
    </script>
</c:if>

<c:if test="${result==2}">
    <script type="text/javascript">
        alert("비밀번호 일치 하지 않음");
    </script>
</c:if>

    <h2>Join US</h2>
    <form action="/login/joinPro.do" method="post">
       <label for="id">아이디</label> <input type="text" name="id" id="id"><br>
       <label for="pwd">비밀번호</label><input type="password" name="pwd" id="pwd"><br>
       <label for="pwd2">비밀번호 확인</label><input type="password" name="pwd2" id="pwd2"><br>
       <label for="name">이름</label><input type="text" name="name" id="name"><br>
       <label for="phone">연락처</label><input type="text" name="phone" id="phone"><br>
      <input type="hidden" name="regdate" id="regdate">

        <input type="submit" value="회원가입">
        <input type="reset" value="취소">
    </form>

</body>
</html>
