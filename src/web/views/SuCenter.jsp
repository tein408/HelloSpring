<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SuCenter</title>
</head>
<body>
    <table>
        <c:set var="j" value="0"/>
        <c:forEach var="list" items="${list}">
            <c:if test="${j%4==0}">
                <tr>
            </c:if>
                    <td>
                        <a href="suinfo.do?suno=${list.no}">no</a>
                        <p>제품명 : ${list.name}<br>
                        금액 : ${list.price} 원</p>
                    </td>
                <c:set var="j" value="${j+1}"/>
        </c:forEach>
                </tr>
    </table>

</body>
</html>
