<!DOCTYPE html>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
                                       java.util.*,
                                       net.vehicle.*" errorPage="" %>
<html>
<style type="text/css">
<!--
.style10 {color: #EED9A8; font-weight: bold; font-size: 14px; }
.style11 {color: #E49C7C}
-->
</style>
<head>
  <title>View Viehicles</title>
</head>
<body>
          <table width="1000" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
  <tr>
    <td colspan="2">
      <%@ include file="include/header.jsp" %>
      </td>
  </tr>
  <tr>
    <td colspan="2"  bgcolor="#D22929" style="height:30px;"><span class="style1">
      <marquee truespeed="truespeed">
      <span class="style2">Egerton Vehicle Management System </span>
      </marquee></span></td>
  </tr>
 </table>
  <h1>List of vehicles</h1>

</body>
<table width="95%" align="center"  style="border:#D22929 solid 2px;padding:10px;" border="0">
  <tr>
    <th bgcolor="#D22929" scope="col"><span class="style10">V ID </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle Name </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle type </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle no </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">No of seats </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Fuel type  </span></th>
  </tr>
<%try
{Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "root");
Statement st = con.createStatement();
String query = "select * from vehicle";
ResultSet rs=st.executeQuery(query);
while(rs.next())
{
  %>
<tr>
  <td><%=rs.getInt("v_id")%></td>
  <td><%=rs.getString("vehicle_name")%></td>
  <td><%=rs.getString("v_type")%></td>
  <td><%=rs.getString("vehicle_no")%></td>
  <td><%=rs.getInt("no_seats")%></td>
  <td><%=rs.getString("f_type")%></td>
</tr>
  <%
}
%>
</table>
<% rs.close(); st.close(); con.close();
}catch(Exception e)
{ e.printStackTrace();
}
%>
</html>





