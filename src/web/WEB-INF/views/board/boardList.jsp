<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>boardList</title>
</head>
<body>
    <h2>고객 게시판</h2>

    <table>
        <tr>
            <td colspan="5">
                <a href="/board/boardWrite.do">글쓰기</a>
            </td>
        </tr>
        <tr>
            <td>no</td>
            <td>제목</td>
            <td>작성자</td>
            <td>조회수</td>
            <td>날짜</td>
        </tr>
        <c:if test="${list!=null}">
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.num}</td>
                    <td>
                            <a href="/board/boardInfo.do?num=${list.num}">${list.subject}</a>
                    </td>
                    <td>${list.writer}</td>
                    <td>${list.readcount}</td>
                    <td>${list.regdate}</td>
                </tr>
            </c:forEach>
        </c:if>

    </table>


</body>
</html>
