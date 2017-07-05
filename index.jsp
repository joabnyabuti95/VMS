<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle Mangement</title>
        <link href="include/loginstyle.css" rel="stylesheet" type="text/css">

        
    </head>
    <body>
        <style>
html,body{
    height: 100%;
    text-align: center;
    font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    font-size: small;
    color:#FA0;
    background-image: url(images/bus.jpg);

}
.style1 {
    font-size: 16px;
    font-weight: bold;
    color: #D22929;
    text-decoration:underline;
}
.style3 {
    font-size: 18px;
    font-weight: bold;
    color: #D22929;
    text-decoration:blink;
}
.myBox {
    margin: 0.5in auto;
    color: #fff;
    width: 600px;
    padding: 20px;
    text-align: left;
    background-color: #DCDCDC;
    border: 3px solid #fff;

    /* Do rounding (native in Firefox and Safari) */
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
}
.style4 {color: #EED9A8}
.style5 {color: #D22929}
.style6 {color: #D22929; font-weight: bold; }
</style>
        <script type="text/javascript">
            function validate(){
                var valid = true;
                var errors = "";

                var uname = document.getElementById("uname");
                if(uname.value == ""){
                    errors += "uname field empty \n";
                    valid = false;
                }

                var passwd = document.getElementById("passwd");
                if (passwd.value == "") {
                    errors += "password field empty \n";
                    valid = false;
                }

                if (valid == false) {
                    alert(errors);
                }
                return valid;
            }
           
        </script>
<div class=""></div>
<div class="myBox">
<table width="" border="0" align="center" style=" background:#EED9A8">
    <tr>
        <th width="45" scope="col">&nbsp;</th>
        <th width="498" scope="col">&nbsp;</th>
        <th width="43" scope="col">&nbsp;</th>
    </tr>
    <tr>
        <th colspan="3" bgcolor="#D22929" scope="col"><div align="center"><span class="style3"><span class="style4"><marquee>Egerton Vehicle Management System</marquee></span></span></div></th>
    </tr>
</table>
        <form method="post" action="login.jsp" onsubmit="return validate(); ">
            <center>
            <table border="1" width="100%" border="0" align="center" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="4">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="30%" align="center" rowspan="8"><img src="images/egertonlogo.jpg" width="213" height="193" /></td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="22%"><span class="style6">User Name</span>
                            <span class="style5"><label></label></span></td>
                        <td width="32%"><label><input type="text" name="uname" id="uname" /></label></td>
                    </tr>
                    <tr>
                        <td width="22%"><span class="style6">Password</span>
                            <span class="style5"><label></label></span></td>
                        <td width="32%"><label><input type="password" name="pass" id="passwd" /></label></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </div>
    </body>
</html>