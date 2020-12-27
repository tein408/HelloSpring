<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>top</title>
</head>
<body>

    <table>
        <tr>
            <td>
                <a href="ShoppingMain.jsp">main</a>
            </td>
        </tr>
        <c:if test="${memberBean==null}">
            <td>
                <input type="button" onclick="location.href='login.do'" value="login"> |
                <input type="button" onclick="location.href='joinUs.do'" value="joinUs">
            </td>
        </c:if>
        <c:if test="${memberBean!=null}">
            <td>
                <br>${memberBean.memId} 님 반갑습니다.<br>
                <input type="button onclick=location.href='logout.do'" value="logout">
            </td>
        </c:if>

        <form action="mainsearch.do" method="post">
            <td>
                <input type="text" name="search" size="10">
                <input type="submit" value="search">
            </td>
        </form>
    </table>

    <!--main menu-->
    <table>
        <tr>
            <td>
                <a href="menu1.do">메뉴1</a>
            </td>
            <td>
                <a href="menu2.do">메뉴2</a>
            </td>
            <td>
                <a href="menu3.do">메뉴3</a>
            </td>
            <td>
                <a href="menu4.do">메뉴4</a>
            </td>
            <td>
                <a href="download.do">download</a>
            </td>
            <td>
                <a href="board.do">customer center</a>
            </td>
        </tr>
    </table>

</body>
</html>
