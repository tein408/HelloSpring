<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>boardInfo</title>
</head>
<body>
    <h2>게시글 보기</h2>
    <table>
        <c:forEach var="boardBean" items="${boardBean}">
            <tr>
                <td>글번호</td>
                <td>${boardBean.num}</td>
                <td>조회수</td>
                <td>${boardBean.readcount}</td>
            </tr>
            <tr>
                <td>작성자</td>
                <td>${boardBean.writer}</td>
                <td>날짜</td>
                <td>${boardBean.regdate}</td>
            </tr>
            <tr>
                <td colspan="2">제목</td>
                <td colspan="2">${boardBean.subject}</td>
            </tr>
            <tr>
                <td colspan="2">내용</td>
                <td colspan="2">${boardBean.content}</td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" value="수정"
                           onclick="location.href='boardUpdate.do?num=${boardBean.num}&subject=${boardBean.subject }&content=${boardBean.content }&writer=${boardBean.writer }'">
                    <input type="button" value="삭제" onclick="location.href='boardDel.do?num=${boardBean.num}'">
                    <input type="button" value="목록" onclick="location.href='/board/board.do'">
                </td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>
