<%-- 
    Document   : ManagerAddNew
    Created on : 20 sty 2021, 22:51:14
    Author     : joann
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.Invoices"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String title = request.getParameter("title");
            Date dateTemp = new Date(System.currentTimeMillis());
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/DD");
            String date = dateFormat.format(dateTemp.getTime());
            
            String vendor = request.getParameter("vendor");
            String buyer = request.getParameter("buyer");
            String price = request.getParameter("price");
            String detail = request.getParameter("detail");
            
            Invoices i = new Invoices(0, title, date, vendor, buyer, price, detail);
            DataAccess da = new DataAccess();
            da.addNew(i);
            
            response.sendRedirect("/InvoiceSystem/AllPost");
        %>
    </body>
</html>
