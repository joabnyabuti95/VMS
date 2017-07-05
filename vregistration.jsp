<%@ page import ="java.sql.*" %>
<%
    String VehicleName = request.getParameter("VehicleName");    
    String vtype = request.getParameter("vtype");
    String VehicleNo = request.getParameter("VehicleNo").toUpperCase();
    String Image = request.getParameter("Image");
    String NoOfSeats = request.getParameter("NoOfSeats");
    String ftype = request.getParameter("ftype");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into vehicle(vehicle_name, v_type, vehicle_no, image, no_seats, f_type) values ('" + VehicleName + "','" + vtype + "','" + VehicleNo + "','" + Image + "','" + NoOfSeats + "','" + ftype +"')");
    if (i > 0) {

        response.sendRedirect("successVehicle.jsp");

    } else {

        response.sendRedirect("vehicleFail.jsp");
    }
%>