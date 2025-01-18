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

 </a>
      <p></p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="HomePage.jsp">Home</a></li>
        <li><a href="UpladData.jsp">Upload EHR</a></li>
        <li><a href="ViewData.jsp">View Data</a></li>
         <li><a href="SearchData.jsp">Search</a></li>
         <li class="active"><a href="ViewShareData.jsp">Shared Data</a></li>
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
               <%String data=(String)session.getAttribute("data");
               String id=(String)session.getAttribute("id");
               String pid=request.getParameter("pid");
               
               %>
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
 <h2>Search Patient Details</h2>
                                                <form action="UpdateActions.jsp" method="post">
                                                <table>
                                                    <tr><th>Patient Id</th><td><input type="text" name="pid" value="<%=pid%>" readonly="" style="height:30px;width:220px;"></td></tr>
                                                    <tr><th>Patient Data</th><td>
                                                            
                                                                <%try{
                                                                  ResultSet r=Queries.getExecuteQuery("select * from patient where id='"+pid+"'");
                                                                  while(r.next()){
                                                                      
                                                                  
                                                                %>
                                                                <textarea cols="50" rows="10" name="data"><%=r.getString("data")%></textarea>
                                                                
                                                                <%}
}catch(Exception e){
out.println(e);
}%>
                                                            </select>
                                                      </td></tr>
                                          
                                                    <tr><th></th><td><input type="submit" value="Modify" required=""></td></tr>
                                            
                                                
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