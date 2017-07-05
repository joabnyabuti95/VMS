<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle Registration</title>
    </head>
    <hr width="600px" style="background:#D22929; border:#D22929 solid 2px;"/>
    <body>
      <script >
        
        function validate(){
          var valid = true;
          var errors = "";
          var vehicleName = document.getElementById("VehicleName");
          
          if(vehicleName.value == ""){
            errors += "vehicle name is required \n";
            valid = false;
          }

          var vehicleNo = document.getElementById("VehicleNo");
          if(vehicleNo.value.length == 0){
            errors += "Vehicle Number is required \n";
            valid = false;
          }

          var NoOfSeats = document.getElementById("NoOfSeats");
          if(NoOfSeats.value == null){
            errors += "Number of seats is required \n";
            valid = false;
          }

          var vehicleNo = document.getElementById("VehicleNo");
          var p =vehicleNo.value.indexOf('K');
          
          if(p<0 || p== -1){
            errors += "Vehicle Number invalid \n";
            valid = false;
          }

          var Image = document.getElementById("Image");
          if (Image.value == "") {
            errors += "image not selected \n";
            valid = false;
          }

          if(valid == false){
            alert(errors);
          }
          return valid;
          
        }
        

       
      </script>
        <form method="post" action="vregistration.jsp" onsubmit="return validate(); ">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"> Enter Vehicle Information Here</th>
                    </tr>
                </thead>
                <tbody>
    <tr>
      <td>Vehicle Name:</td>
      <td><label>
        <input name="VehicleName" type="text" id="VehicleName" size="30" />
      </label></td>
    </tr>
    
    <tr>
      <td>Vehicle Type: </td>
      <td><label>
        <select name="vtype" id="VType">
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
      <td>Vehicle No: </td>
      <td><label>
        <input name="VehicleNo" type="text" id="VehicleNo" />
      </label></td>
    </tr>

    <tr>
      <td>Image:</td>
      <td><label>
        <input name="Image" type="file" id="Image" />
      </label></td>
    </tr>
    <tr>
      <td>No of seats</td>
      <td><label>
        <input type="text" name="NoOfSeats" id="NoOfSeats" />
      </label></td>
    </tr>
    <tr>
      <td>Fuel Type: </td>
      <td><label>
        <select name="ftype">
        <option value= "">&nbsp; &nbsp;</option>    
        <option value="Pertol">&nbsp;Pertol&nbsp;</option>
        <option value="Diesel">&nbsp;Diesel&nbsp;</option>
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
