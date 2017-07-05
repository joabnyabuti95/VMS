<%@ page import ="java.sql.*" %>
<%
    String VehicleName = request.getParameter("VehicleName");    
    String VehicleNo = request.getParameter("VehicleNo");
    String fdate = request.getParameter("fdate");
    String ftype = request.getParameter("ftype");
    String Quantity = request.getParameter("Quantity");
    String Cost = request.getParameter("Cost");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into fuel_details(vehicle_name, vehicle_no, date, f_type, qty, cost) values ('" + VehicleName + "','" + VehicleNo + "','" + fdate + "','" + ftype + "','" + Quantity + "','" + Cost +"')");
    if (i > 0) {

        response.sendRedirect("successFuel.jsp");

    } else {

        response.sendRedirect("fuelFail.jsp");
    }
%>