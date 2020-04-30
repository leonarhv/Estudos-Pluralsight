<%--
  Created by IntelliJ IDEA.
  User: leona
  Date: 23/04/2020
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Registration</title>
    <meta charset="UTF-8" />
    <style>
        .error {
            color: #f10000;
        }

        .errorBlock {
            color: #000;
            background-color: #f1EEEE;
            border: 3px solid #f10000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
    <h1><spring:message code="title" /></h1>

    <form:form modelAttribute="registration">
        <form:errors path="*" cssClass="errorBlock" element="div" />
        <table>
            <tr>
                <td>
                    <spring:message code="name" />
                </td>
                <td>
                    <form:input path="name" />
                </td>
                <td>
                    <form:errors path="name" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <button type="submit"><spring:message code="save.changes" /></button>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
