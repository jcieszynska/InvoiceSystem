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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.6.3/dist/css/foundation.min.css" integrity="sha256-ogmFxjqiTMnZhxCqVmcqTvjfe1Y/ec4WaRj/aQPvn+I=" crossorigin="anonymous">
        <title>All Post</title>
        <button><a href="AddNew.html" ><i class="fa fa-plus-square"></i>Add New</a></button>
    </head>
    <body>
        <div syle="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">   
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Vendor</th>
                    <th>Buyer</th>   
                    <th>Price</th>
                    <th>Detail</th>
                    <th>Action</th>

                </tr>
                </thead>
                <tbody>
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
                            <form action="">
                                <a href="edit?id=${p.id}" class="button"><i class="fas fa-edit"></i></a>
                                <a href="delete?id=${p.id}" class="button"><i class="fas fa-trash"></i></a>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
