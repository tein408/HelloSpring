<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>Spring MVC Shopping Mall</title>
  </head>
  <body>
    <h2>ShoppingMain</h2>
    <c:set var="center" value="${center}"/>
    <c:set var="left" value="${left}"/>

    <c:if test="${center==null}">
      <c:set var="center" value="center.jsp"/>
    </c:if>

    <table>
      <tr>
        <td>
          <jsp:include page="top.jsp"/>
        </td>
      </tr>

      <tr>
        <c:if test="${left==null}">
          <td>
            <jsp:include page="${center}"/>
          </td>
        </c:if>
        <c:if test="${left!=null}">
          <td>
            <jsp:include page="${left}"/>
          </td>
          <td>
            <jsp:include page="${center}"/>
          </td>
        </c:if>
      </tr>

      <tr>
        <td>
          <jsp:include page="bottom.jsp"/>
        </td>
      </tr>

    </table>








  </body>
</html>
