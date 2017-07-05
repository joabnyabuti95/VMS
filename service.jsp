<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle Service</title>
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
    	<div>
    		<div class="menutitle">&nbsp;Vehicle Service</div>
    		<ul>
    			<li><a href="viewService.jsp">View Service Details</a></li>
    			<li><a href="addService.jsp">Register service information</a></li>
    		</ul>
    	</div>
                        <div>
    <li><a href="vehicle.jsp">Vehicle</a></li>
</div>
                <div>
    <li><a href="success.jsp">Home</a></li>
</div>

    </body>
</html>
