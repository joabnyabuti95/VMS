<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page session="true"%>

<sql:setDataSource var="vehicles" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/dbname" user="root" password="root" />

<sql:query dataSource="${vehicles}" var="result">
 select * from vehicle
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="include/admin.css" rel="stylesheet" type="text/css">
<link href="include/menu.css" rel="stylesheet" type="text/css">
<link href="include/main.css" rel="stylesheet" type="text/css">



<title>Vehicle Booking</title>
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


	<div class="container">
		<div class="page-header text-center">
			<br>
			<h1>Book Vehicle</h1>
		</div>
		

			

			
			<form method="post" action="bookregistration.jsp">
				<tr>
				<div class="col-md-4">

					<div class="panel panel-primary">

						<div class="panel-body">
							<div class="form-group">
								<td>&nbsp;</td>
								<td>Vehicle Type</td>
								<td>:</td>
								<td>

								<select class="form-control" name="vtype" id="vtype" required>
									<c:forEach var="row" items="${result.rows}">
										<option origin-id="${row.v_type}"><c:out
												value="${row.v_type}" /></option>
									</c:forEach>
								</select>
								<td>&nbsp;</td>
							</td>
							</div>
						</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="col-md-4">

					<div class="panel panel-primary">

						<div class="panel-body">
							<div class="form-group">
								<td>&nbsp;</td>
								<td>Number of Seats</td>
								<td>:</td>
								<td>
								<select class="form-control" name="NoOfSeats" id="NoOfSeats" required>
									<c:forEach var="row" items="${result.rows}">
										<option time-id="${row.no_seats}"><c:out
												value="${row.no_seats}" /></option>
									</c:forEach>
								</select>
								<td>&nbsp;</td>
							</td>
							</div>
						</div>
					</div>
				</div>
			</tr>
			<tr>

				<div class="col-md-4">

					<div class="panel panel-primary">

						<div class="panel-body">
							<div class="form-group">
								<td>&nbsp;</td>
								<td>Vehicle Name</td>
								<td>:</td>
								<td>

								<select class="form-control" name="VehicleName" id="VehicleName" required>
									<c:forEach var="row" items="${result.rows}">
										<option destination-id="${row.vehicle_name}"><c:out
												value="${row.vehicle_name}" /></option>
									</c:forEach>
								</select>
								<td>&nbsp;</td>
							</td>
							</div>
						</div>
					</div>
				</div>
			</tr>
			<tr>

				<div class="col-md-4">

					<div class="panel panel-primary">

						<div class="panel-body">
							<div class="form-group">
								<td>&nbsp;</td>
								<td>Vehicle Number</td>
								<td>:</td>
								<td>

								<select class="form-control" name="VehicleNo" id="VehicleNo" required>
									<c:forEach var="row" items="${result.rows}">
										<option time-id="${row.vehicle_no}"><c:out
												value="${row.vehicle_no}" /></option>
									</c:forEach>
								</select>
								<td>&nbsp;</td>
							</td>
							</div>
						</div>
					</div>
				</div>
			</tr>
			<div>
			<tr>
				      <td>&nbsp;</td>
      <td>Start Date </td>
      <td>:</td>
      <td><label>
         <input name="sdate" type="text" id="sdate" placeholder="dd/mm/yyyy" /></td>
      <td>&nbsp;</td>
			</tr>
		</div>
			<div>
			<tr>
				      <td>&nbsp;</td>
      <td>End Date </td>
      <td>:</td>
      <td><label>
        <input name="edate" type="text" id="edate" placeholder="dd/mm/yyyy" /></td>
      <td>&nbsp;</td>
			</tr>
		</div>



<div>
    <tr>
        <td><input type="submit" value="Submit" /></td>
        <td><input type="reset" value="Reset" /></td>
    </tr>
</div>


				</div>

			</form>
		</div>

	</div>


</body>
</html>
