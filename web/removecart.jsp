<%-- 
    Document   : removecart
    Created on : Feb 2, 2021, 10:36:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            String id = request.getParameter("id");
             try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    Statement st = con.createStatement();
                    st.executeUpdate("Delete from cart where id = '" + id + "'");
                    response.sendRedirect("cart.jsp");
                } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Menghapus Produk');
                window.location.href = "cart.jsp";
            }

        </script>
        <% }
            } catch (Exception e) {
                out.print("Can't Connect Database : " + e.getMessage());
            }
        %>
    </body>
</html>
