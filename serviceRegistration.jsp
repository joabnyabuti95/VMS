<%@ page import ="java.sql.*" %>
<%
    String VehicleNo = request.getParameter("VehicleNo");
    String VehicleName = request.getParameter("VehicleName"); 
    String Sdate = request.getParameter("Sdate");
    String Odometer = request.getParameter("Odometer");
    String Note = request.getParameter("Note");
    String Cost = request.getParameter("Cost");  

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into service(vehicle_no, vehicle_name, date, odometer, note, cost) values ('" + VehicleNo + "','" + VehicleName + "','" + Sdate + "','" + Odometer + "','" + Note + "','" + Cost + "')");
    if (i > 0) {

        response.sendRedirect("successService.jsp");

    } else {

        response.sendRedirect("serviceFail.jsp");
    }
%>