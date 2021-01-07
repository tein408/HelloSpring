
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<c:if test="${login==1}">
    <script type="text/javascript">
        alert("아이디 혹은 비밀번호 확인");
    </script>
</c:if>

<body>
    <h2>LOGIN PAGE</h2>

    <hr>
    <form action="/login/loginPro.do" method="post">
        <label for="id">아이디</label> <input type="text" name="id" id="id"><br>
        <label for="pwd">비밀번호</label> <input type="password" name="pwd" id="pwd"><br>
        <input type="submit" value="로그인">
        <input type="button" value="아이디/비밀번호 찾기">
    </form>

</body>
</html>
