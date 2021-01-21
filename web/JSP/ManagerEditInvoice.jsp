<%-- 
    Document   : ManagerEditInvoice
    Created on : 21 sty 2021, 01:02:51
    Author     : joann
--%>

<%@page import="dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
            String title = request.getParameter("title");
            String vendor = request.getParameter("vendor");
            String buyer = request.getParameter("buyer");
            String price = request.getParameter("price");
            String detail = request.getParameter("detail");
            
            DataAccess da = new DataAccess();
            da.edit(id, title, vendor, buyer, price, detail);
            
            response.sendRedirect("/InvoiceSystem/AllPost");
            
        %>
    </body>
</html>
