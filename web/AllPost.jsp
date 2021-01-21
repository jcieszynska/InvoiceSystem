<%-- 
    Document   : AllPost
    Created on : 20 sty 2021, 23:02:03
    Author     : joann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Post</title>
    </head>
    <body>
        <div syle="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">    
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Vendor</th>
                    <th>Buyer</th>   
                    <th>Price</th>
                    <th>Detail</th>
                </tr>
                <c:forEach items="${AllPost}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.title}</td>
                        <td>${p.date}</td>
                        <td>${p.vendor}</td>
                        <td>${p.buyer}</td>
                        <td>${p.price}</td>
                        <td>${p.detail}</td>   
                        <td>
                            <a href="edit?id=${p.id}">Edit</a>
                            <a href="delete?id=${p.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
