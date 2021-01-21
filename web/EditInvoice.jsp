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
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit Invoices</h1>
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
                    <textarea name="detail" value="${p.detail}" style="width: 400px; height: 200px"></textarea><br>
                    <input type="submit" value="Submit">
                </form>  
            </c:forEach>
        </div>
    </body>
</html>
