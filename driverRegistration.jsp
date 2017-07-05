<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String image = request.getParameter("image");
    String mobileNo = request.getParameter("mobileNo");
    String licNo = request.getParameter("licNo").toUpperCase();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into driver(first_name, last_name, image, mobileNo, lic_no) values ('" + fname + "','" + lname + "','" + image + "','" + mobileNo + "','" + licNo + "')");
    if (i > 0) {

        response.sendRedirect("successDriver.jsp");

    } else {
        response.sendRedirect("failDriver.jsp");
    }
%>