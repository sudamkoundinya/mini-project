<%-- 
    Document   : Client
    Created on : 14 Jul, 2021, 2:12:51 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>publicly
</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript">
$(function() {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#fs_pagination',
        pause: 1,
        pauseOnPagerHover: 0
    });
});
</script>
<!-- End Homepage Only Scripts -->
</head>
<body>

<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
        <h2><a href="index.html">Publicly Verifiable Shared Dynamic Electronic
Health Record Databases 

 </a><span>with Functional
Commitment Supporting Privacy-Preserving
Integrity Auditing</span><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li class="active"><a href="Client.jsp">Client</a></li>
        <li><a href="GMember.jsp">Group Manager</a></li>
        <li><a href="CloudServer.jsp">Cloud</a></li>
        <li><a href="TPA.jsp">TPA</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
   
    <div class="featured_box"><a href="#"><img src="images/Capture.PNG" alt="" /></a>
      <div class="floater">
        <h2></h2>
        <p align="justify">
        In our dynamic group member scenario, any group
user can upload own database to the cloud and share them
with other group members. And a trusted group manager
is responsible for joining or revoking on a client  
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
   
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">

      </div>
      <div class="column2">
      <h1>Welcome To Client Register</h1>
      <form name="reg" action="ClientReg.jsp" method="post">
        <table bgcolor="orange" style="margin-top: 50px;width: 400px;">
            
            <tr>
                <td><font size="4" color="green" style="">First Name</font></td>
                <td><input type="text" name="fname" required></input></td>
            </tr>
             <tr>
                <td><font size="4" color="green" style="">Last Name</td>
                <td><input type="text" name="lname" required></input></td>
            </tr>
             <tr>
                <td><font size="4" color="green" style="">Email ID</td>
                <td><input type="email" name="email" required></input></td>
            </tr>
             <tr>
                <td><font size="4" color="green" style="">Mobile Number</td>
                <td><input type="text" name="mobile" required></input></td>
            </tr>
            <tr>
                <td><font size="4" color="green" style="">Address </td>
                <td><input type="text" name="address" required></input></td>
            </tr>
           
            <tr>
                <td><font size="4" color="green" style="">User Name</td>
                <td><input type="text" name="uname" required></input></td>
            </tr>
            <tr>
                <td><font size="4" color="green" style="">Password</td>
                <td><input type="password" name="password" required></input></td>
            </tr>
            <tr>
                <td><font size="4" color="green" style="">Role</td>
                <td><select name="role"  required>
                        <option></option>
                        <option value="Clinic">Clinic</option>
                          <option value="Healthcare">Health care</option>
                           <option value="Hospital">Hospital</option>
                            <option value="MedicineCenter">Medicine center</option>
                             <option value="Insurance">Insurance</option>
                    </select></td>
            </tr>
            <tr>
                <td><input type="Submit" value="Register" style="font-size: 15px;"></input></td>
                <td><input type="Reset" style="font-size: 15px;"></input></td>
            </tr>
        </table>
</form>
      </div>
    </div>
    <div class="fl_right">
        <h1>Welcome To Client Login</h1>
       <form name="login" action="ClientLogin.jsp" method="post">
       <table bgcolor="orange" style="margin-top: 50px;width: 300px;">
    
            <tr>
                <td><font size="4" color="green" style="">UserName</td>
                <td><input type="text" name="uname" required></input></td>
            </tr>
            <tr>
                <td><font size="4" color="green" style="">Password</td>
                <td><input type="password" name="password" required></input></td>
            </tr>
           <tr>
              <td><font size="4" color="green" style="">Role</td>
           <td><select name="role"  required>
                        <option></option>
                        <option value="Clinic">Clinic</option>
                          <option value="Healthcare">Health care</option>
                           <option value="Hospital">Hospital</option>
                            <option value="MedicineCenter">Medicine center</option>
                             <option value="Insurance">Insurance</option>
                    </select></td>
            </tr>
            <tr>
                <td><input type="Submit" value="Login" style="font-size: 15px;"></input></td>
                <td><input type="Reset" style="font-size: 15px;"></input></td>
            </tr>
       </form>
        </table>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
   
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  
</div>
</body>
</html>