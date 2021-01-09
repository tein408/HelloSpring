<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>boardWrite</title>
</head>
<body>
    <h2>고객게시판 글쓰기</h2>
    <form action="/board/boardWritePro.do" method="post">
        <table>
            <tr>
                <td>작성자</td>
                <td>${memberBean.name}</td>
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
                    <input type="text" id="subject" name="subject">
                </td>
            </tr>
            <tr>
                <td>내용</td>
                <td>
                    <textarea id="content" name="content" maxlength="1000"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="글쓰기">
                    <input type="reset" value="취소">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
