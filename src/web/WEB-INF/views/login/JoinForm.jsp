
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JoinForm</title>
</head>
<body>
    <h2>Join US</h2>
    <form action="joinPro.do" method="post">
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
