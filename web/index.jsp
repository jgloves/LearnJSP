<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Oct 16, 2015, 3:48:04 PM
    Author     : jessicaglover
--%>
<sql:query var="houses" dataSource="jdbc/LearnJSP">
    SELECT id, name FROM Houses
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn JSP Homepage</title>
    </head>
    <body>
        <h1>Welcome to my simple web application!</h1><table border="0">
            <thead>
                <tr>
                    <th>I've collected data about some Hogwarts Houses</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To view this data, select a house name below:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Select a name:</strong>
                            <select name="house_id">
                                <c:forEach var="row" items="${houses.rows}">
                                    <option value="${row.id}">${row.name}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
