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

 </a><span>with Functional
Commitment Supporting Privacy-Preserving
Integrity Auditing</span><h2>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="MemberHome.jsp">Home</a></li>
        <li class="active"><a href="ClientDetails.jsp">View Client Details</a></li>
       
        <li><a href="GMember.jsp">Logout</a></li>
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
          <table>
              <tr>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Mobile</th>
                  <th>Username</th>
                  <th>Role</th>
                  <th>Status</th>
              </tr>
              <%
              try{
             ResultSet r=Queries.getExecuteQuery("select * from client");
             while(r.next()){
                 String status=r.getString("status");
               %>
               <tr> 
                   <td><%=r.getString("fname")%></td>
                   <td><%=r.getString("lname")%></td>
                   <td><%=r.getString("email")%></td>
                   <td><%=r.getString("mobile")%></td>
                   <td><%=r.getString("uname")%></td>
                   <td><%=r.getString("role")%></td>
                   <%if(status.equals("waiting")){
                     %>
                     <td><a href="Activate.jsp?id=<%=r.getString("id")%>">Join</a> ||
                     <a href="Revoke.jsp?id=<%=r.getString("id")%>">Revoke</a></td>
                     <%
                   }else{%>
                   <td><%=r.getString("status")%></td>
                   <%}%>
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