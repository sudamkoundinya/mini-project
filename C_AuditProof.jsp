<%-- 
    Document   : Client
    Created on : 14 Jul, 2021, 2:12:51 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.connection.Queries"%>
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

 </a><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
       <li><a href="CloudHome.jsp">Home</a></li>
        <li><a href="C_MemberDetails.jsp">View Client Details</a></li>
       <li><a href="C_PatientDetails.jsp">View Patient Details</a></li>
       <li class="active"><a href="C_AuditProof.jsp">Audit Proof</a></li>
        <li><a href="CloudServer.jsp">Logout</a></li>
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
          <h2>WELCOME TO MEMBER</h2>
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
          <h2>TPA Audit Proof</h2>
          <table>
              <tr>
                  <th>Patient ID</th>
                  <th>Audit Date</th>
                  <th>Audit Status</th>
                  
              </tr>
              <%
              try{
             ResultSet r=Queries.getExecuteQuery("select * from audit");
             while(r.next()){
               
               %>
               <tr> 
                   <td><%=r.getString("pid")%></td>
                   <td><%=r.getString("date")%></td>
                   <td><%=r.getString("status")%></td>
                  
                 
               </tr> 
               <%
             }
              
              
              
              }catch(Exception e){
                  out.println(e);
              }
                  %>
          </table>
          
          
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