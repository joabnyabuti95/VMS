<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parts Registration</title>
    </head>
    <body>
    	<script type="text/javascript">
    		function validate(){
    			var valid = true;
    			var errors = "";

    			var pname = document.getElementById("pname");
                if(pname.value == ""){
                    errors += "Part name not entered \n";
                    valid = false;
                }

                var pqty = document.getElementById("pqty");
                if (pqty.value == "") {
                    errors += "Part Quantity not entered \n";
                    valid = false;
                }

                var Image = document.getElementById("Image");
                if(Image.value == ""){
                    errors += "image not entered \n";
                    valid = false;
                }

                if(valid == false){
                alert(errors);
                }
                return valid;
    		}
    	</script>
        <form method="post" action="partsRegistration.jsp" onsubmit="return validate();" >
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Parts Information Here</th>
                    </tr>
                </thead>
                <hr width="600px" style="background:#D22929; border:#D22929 solid 2px;"/>
                <tbody>
                    <tr>
                        <td>Part Name</td>
                        <td><input type="text" name="pname" id="pname" /></td>
                    </tr>
                    <tr>
                        <td>Part Quantity</td>
                        <td><input type="text" name="pqty" id="pqty" /></td>
                    </tr>
                    <tr>
                         <td>Image</td>
                         <td><input name="Image" type="file" id="Image" /></td>
                    </tr>
                    <tr>
                        <td>Vehicle type</td>
                        <td><label>
                            <select name="vtype" id="vtype">
                                <option value= "">&nbsp; &nbsp;</option>
                                <option value="Pick up">&nbsp;Pick up</option>
                                <option value="Bus">&nbsp;Bus</option>
                                <option value="SUV">&nbsp;SUV</option>
                                <option value="tuk tuk">&nbsp;tuk tuk</option>
                                <option value="Sedan">&nbsp;Sedan</option>
                            </select>
                        </label></td>
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
