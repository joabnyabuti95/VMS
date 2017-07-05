<%@ page import ="java.sql.*" %>
<%
    String pname = request.getParameter("pname");
    String pqty = request.getParameter("pqty"); 
    String Image = request.getParameter("Image");  
    String vtype = request.getParameter("vtype");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into parts(p_name, p_qty, image, vtype) values ('" + pname + "','" + pqty + "','" + Image + "','" + vtype + "')");
    if (i > 0) {

        response.sendRedirect("successPart.jsp");

    } else {

        response.sendRedirect("partFail.jsp");
    }
%>