<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> User Registration</title>
    </head>
    <body>
        <script>
            function validate(){
                var valid = true;
                var errors = "";

                var fname = document.getElementById("fname");
                if(fname.value == ""){
                    errors += "first name not entered \n";
                    valid = false;
                }

                var lname = document.getElementById("lname");
                if(fname.value == ""){
                    errors += "last name not entered \n";
                    valid = false;
                }

                var email = document.getElementById("email");
                var i =email.value.indexOf('@');

                if(i == -1 ){
                    errors += "email is required \n";
                    valid = false;
                }

                var uname = document.getElementById("uname");
                if(uname.value == ""){
                    errors += "user name is required \n";
                    valid = false;
                }

                var passwd = document.getElementById("passwd");
                if(passwd.value == ""){
                    errors += "password cannot be blanc \n";
                    valid = false;
                }
                if(valid == false){
                    alert(errors);
                }
                return valid;
            }
        </script>
        <form method="post" action="registration.jsp" onsubmit="return validate(); ">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter User Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" id="fname" placeholder="First name" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" id="lname"  /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" id="email" /></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td><input type="text" name="mobileNo" value="+254" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" id="uname"  /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" id="passwd" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
