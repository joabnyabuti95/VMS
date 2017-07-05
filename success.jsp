<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> welcome</title>
  <link href="include/admin.css" rel="stylesheet" type="text/css">
  <link href="include/menu.css" rel="stylesheet" type="text/css">
  <link href="include/main.css" rel="stylesheet" type="text/css">
  <style type="text/css">
<!--
html,body{
    text-align: center;
}
.style1 {
  font-size: 16px;
  font-weight: bold;
  color: #D22929;
}
.white{
color:#FFFFFF;
}
.style2 {color: #DCDCDC}

-->
</style>

</head>
<body>
<div class=""></div>
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

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>

<%
    }
%>

<div id="ddblueblockmenu"></div>
<div>
	<div class="menutitle">&nbsp;Vehicle Management</div>
	<ul>
		<li><a href="drivers.jsp">Drivers </a></li>
		<li><a href="vehicle.jsp">Vehicles </a></li>
	</ul>
	<div class="menutitle">&nbsp;</div>
	<a href='logout.jsp'>Log out</a>
</div>
</body>
</html>
