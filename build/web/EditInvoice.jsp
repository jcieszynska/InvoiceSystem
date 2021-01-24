<%-- 
    Document   : EditInvoice
    Created on : 21 sty 2021, 00:48:01
    Author     : joann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.6.3/dist/css/foundation.min.css" integrity="sha256-ogmFxjqiTMnZhxCqVmcqTvjfe1Y/ec4WaRj/aQPvn+I=" crossorigin="anonymous">
        <title>Edit</title>

    </head>
    <body>
        <h1>Edit Invoice</h1>
        <div style="width: 900px; margin-left: auto; margin-right: auto">
            <c:forEach items="${getInvoiceById}" var="p">
                <form action="JSP/ManagerEditInvoice.jsp" method="post">
                    <input type="hidden" name="id" value="${p.id}">
                    Title: <br>
                    <input type="text" name="title" value="${p.title}" style="width: 200px"><br>
                    Vendor: <br>
                    <input type="text" name="vendor" value="${p.vendor}" style="width: 200px"><br>
                    Buyer: <br>
                    <input type="text" name="buyer" value="${p.buyer}" style="width: 200px"><br>
                    Price: <br>
                    <input type="text" name="price" value="${p.price}" style="width: 200px"><br>
                    Detail: <br>
                    <input name="detail" value="${p.detail}" style="width: 400px; height: 100px"></input><br>
                    <input type="submit" class="button" value="Submit"/>
                </form>  
            </c:forEach>
        </div>
    </body>
</html>
