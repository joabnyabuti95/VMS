<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page session="true"%>
<sql:setDataSource var="vehicles" driver="com.mysql.jdbc.Driver"
  url="jdbc:mysql://localhost/dbname" user="root" password="root" />

<sql:query dataSource="${vehicles}" var="result">
 select * from vehicle
</sql:query>
<html>
<style type="text/css">
<!--
.style10 {color: #EED9A8; font-weight: bold; font-size: 14px; }
.style11 {color: #E49C7C}
-->
</style>
<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service details</title>
        <link href="include/admin.css" rel="stylesheet" type="text/css">
        <link href="include/menu.css" rel="stylesheet" type="text/css">
        <link href="include/main.css" rel="stylesheet" type="text/css">
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
  <form method="post" action="serviceRegistration.jsp">

<table width="80%" border="0" align="center">
	<tr>
	<th colspan="5" scope="col"><div class="header">
		<div align="left">Add Service Details </div>
	</div></th>
	</tr>
	<tr>
      <td width="15%">&nbsp;</td>
      <td width="23%">&nbsp;</td>
      <td width="3%">&nbsp;</td>
      <td width="38%">&nbsp;</td>
      <td width="21%">&nbsp;</td>
    </tr>
     <tr>
      <td>&nbsp;</td>
      <td>Vehicle Number</td>
      <td>;</td>
      <td><label>
                        <select class="form-control" name="VehicleNo" id="time" required>
                  <c:forEach var="row" items="${result.rows}">
                    <option time-id="${row.vehicle_no}"><c:out
                        value="${row.vehicle_no}" /></option>
                  </c:forEach>
                </select>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Vehicle Name  </td>
      <td>:</td>
      <td><label>
                        <select class="form-control" name="VehicleName" id="destination"
                  required>
                  <c:forEach var="row" items="${result.rows}">
                    <option destination-id="${row.vehicle_name}"><c:out
                        value="${row.vehicle_name}" /></option>
                  </c:forEach>
                </select>
      </label></td>
      <td>&nbsp;</td>
    </tr>

    <tr>
      <td>&nbsp;</td>
      <td>Service Date </td>
      <td>:</td>
      <td><label>
        <input name="Sdate" type="text" id="Sdate" placeholder="dd/mm/yyyy" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
    	<td>&nbsp;</td>
    	<td>Odometer reading</td>
    	<td>;</td>
    	<td><label>
    		<input type="text" name="Odometer" id="Odometer" />
    	</label></td>
    	<td>&nbsp;</td>
    </tr>
    <tr>
    	<td>&nbsp;</td>
    	<td>Note</td>
    	<td>;</td>
    	<td><label>
    		<input type="text" name="Note" id="Note" />
    	</label></td>
    	<td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Total Cost . </td>
      <td>:</td>
      <td><label>
        <input name="Cost" type="text" id="Cost" />
      </label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
        <td><input type="submit" value="Submit" /></td>
        <td><input type="reset" value="Reset" /></td>
    </tr>
 </table>
</body>
 </html>
