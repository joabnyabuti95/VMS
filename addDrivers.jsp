<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Registration</title>
    </head>
    <body>
    	<script type="text/javascript">
    		function validate(){
    			var valid = true;
    			var errors = "";

    			var fname = document.getElementById("fname");
                if(fname.value == ""){
                    errors += "first name not entered \n";
                    valid = false;
                }

                var lname = document.getElementById("lname");
                if(lname.value == ""){
                    errors += "last name not entered \n";
                    valid = false;
                }

                var Image = document.getElementById("Image");
                if(Image.value == ""){
                    errors += "Image not selected \n";
                    valid = false;
                }

                var licNo = document.getElementById("licNo");
                if(licNo.value == ""){
                    errors += "licNo not entered \n";
                    valid = false;
                }

                if(valid == false){
                alert(errors);
                }
                return valid;
    		}
    	</script>
        <form method="post" action="driverRegistration.jsp" onsubmit="return validate();" >
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Driver Information Here</th>
                    </tr>
                </thead>
                <hr width="600px" style="background:#D22929; border:#D22929 solid 2px;"/>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" id="fname" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" id="lname" /></td>
                    </tr>
                    <tr>
                         <td>Image</td>
                         <td><input name="Image" type="file" id="Image" /></td>
                    </tr>

                    <tr>
                        <td>Mobile Number</td>
                        <td><input type="text" name="mobileNo" value="+2547" /></td>
                    </tr>

                    <tr>
                        <td>Lic Number</td>
                        <td><input type="text" name="licNo" id="licNo" /></td>
                    </tr>

                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>

                </tbody>
            </table>
            </center>
        </form>
    </body>
    <hr width="600px" style="background:#D22929; border:#D22929 solid 2px;"/>
</html>
