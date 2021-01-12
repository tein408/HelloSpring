<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>boardWrite</title>
</head>
<body>
<h2>고객게시판 글수정</h2>
<form action="/board/boardUpdatePro.do" method="post">
    <input type="hidden" id="writer" name="writer" value="${boardBean.writer}">
    <input type="hidden" id="num" name="num" value="${boardBean.num}">
    <table>
        <tr>
            <td>작성자</td>
            <td>${boardBean.writer}</td>
        </tr>
        <tr>
            <td>이메일</td>
            <td>
                <input type="text" id="email" name="email">
            </td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td>
                <input type="password" id="pwd" name="pwd">
            </td>
        </tr>
        <tr>
            <td>제목</td>
            <td>
                ${boardBean.subject}
            </td>
        </tr>
        <tr>
            <td>내용</td>
            <td>
                <textarea id="content" name="content" maxlength="1000">${boardBean.content}</textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="수정하기">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
