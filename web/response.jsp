<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : Oct 16, 2015, 4:01:08 PM
    Author     : jessicaglover
--%>
<sql:query var="houseQuery" dataSource="jdbc/LearnJSP">
    SELECT * FROM Houses WHERE id = ? <sql:param value="${param.house_id}"/>
</sql:query>
<c:set var="houseDetails" value="${houseQuery.rows[0]}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${houseDetails.name}</title>
    </head>
    <body>
        <table border="0">
    <thead>
        <tr>
            <th colspan="2">${houseDetails.name}</th>
        </tr>
    </thead>
    <tbody>
<!--        <tr>
            <td><strong>Description: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">{placeholder}</span></td>
        </tr>-->
        <tr>
            <td><strong>Founder: </strong></td>
            <td>${houseDetails.founder}
<!--                <br>
                <span style="font-size:smaller; font-style:italic;">
                member since: {placeholder}</span>-->
            </td>
        </tr>
        <tr>
            <td><strong>House Colors: </strong></td>
            <td>${houseDetails.colors}</td>

        </tr>
        <tr>
            <td><strong>House Animal:</strong></td>
            <td>${houseDetails.animal}</td>
        </tr>
        <tr>
            <td><strong>House Ghost:</strong></td>
            <td>${houseDetails.ghost}</td>
        </tr>
    </tbody>
</table>
    </body>
</html>
