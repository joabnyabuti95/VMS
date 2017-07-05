<%@ page import ="java.sql.*" %>
<%
 
    String vtype = request.getParameter("vtype");
    String NoOfSeats = request.getParameter("NoOfSeats");
    String VehicleName = request.getParameter("VehicleName");   
    String VehicleNo = request.getParameter("VehicleNo");
    String StartDate = request.getParameter("StartDate");
    String EndDate = request.getParameter("EndDate");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into bookings(vtype, no_of_seats, vehicle_name, vehicle_no, sdate, edate) values ('" + vtype + "','" + NoOfSeats + "','" + VehicleName +"','" + VehicleNo + "','" + StartDate + "','" + EndDate +"')");
    if (i > 0) {

        response.sendRedirect("successBook.jsp");

    } else {

        response.sendRedirect("bookFail.jsp");
    }
%>