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

 </a>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
         <li><a href="HomePage.jsp">Home</a></li>
        <li class="active"><a href="UpladData.jsp">Upload EHR</a></li>
        <li><a href="ViewData.jsp">View Data</a></li>
         <li><a href="SearchData.jsp">Search</a></li>
         <li><a href="ViewShareData.jsp">Shared Data</a></li>
        <li><a href="Client.jsp">Logout</a></li>
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
          <h2>
               <%String data=(String)session.getAttribute("data");%>
      <h2>Welcome to <%=data%> Home page</h2>
          </h2>
    
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
 <h2>Upload Patient Details</h2>
                                                <form action="PatientUploadAction" method="post" enctype="multipart/form-data">
                                                <table>
                                                    <tr><th>Patient Name</th><td><input type="text" name="pname" required="" style="height:30px;width:220px;"></td></tr>
                                                <tr><th>Email</th><td><input type="email" name="email" required=""></td></tr>
                                               
                                                    <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></td></tr>
                                                <tr><th>Address</th><td><input type="text" name="address" required="" style="height:30px;width:220px;"></td></tr>
                                             <tr><th>Date of Birth</th><td><input type="date" name="dob" required=""></td></tr>
                                                <tr><th>Hospital Name</th><td><input type="text" name="hspname" required="" style="height:30px;width:220px;"></td></tr>
                                                <tr><th>Patient Blood Group</th><td><input type="text" name="bgroup" required="" style="height:30px;width:220px;"></td></tr>
                                              
                                                 <tr><th>Disease Name</th><td><input type="text" name="dname" required="" style="height:30px;width:220px;"></td></tr>
                                                 <tr><th>Disease Symptom</th><td><textarea cols="20" rows="8" name="dsymptom" required="" style="height:50px;width:220px;"></textarea></td></tr>
                                               <tr><th>Patient Age</th><td><input type="text" name="page" required="" style="height:30px;width:220px;"></td></tr>
                                                <tr><th>File Name</th><td><input type="text" name="fname" required="" style="height:30px;width:220px;"></td></tr>
                                            
                                                <tr><th>Select File</th><td><input type="file" name="file" required="" style="height:30px;width:220px;"></td></tr>
                                            <tr><th></th><td><input type="submit" value="upload" required=""></td></tr>
                                            
                                                
                                                </table>
                                                
                                                </form>
      </div>
      <div class="column2">
      
      </div>
    </div>
    <div class="fl_right">
       
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