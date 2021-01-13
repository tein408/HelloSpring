<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="boardDelPro.do" method="post">
        <input type="hidden" name="num" value="${num}">
        <label for="pwd">비밀번호</label><input type="password" name="pwd" id="pwd"><br>
        <input type="submit" value="삭제하기">
        <input type="button" value="목록" onclick="location.href='/board/board.do'">
    </form>
</body>
</html>
