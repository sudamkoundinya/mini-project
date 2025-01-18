<%-- 
    Document   : ClientLogin
    Created on : 20 Feb, 2019, 9:59:47 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    
    try
    {
  
if(uname.equalsIgnoreCase("TPA")&&password.equalsIgnoreCase("TPA"))
{
   
    %>
      <script type="text/javascript">
          window.alert("TPA Login Sucessfully");
          window.location="TPAHome.jsp";
          </script>
      <%
          
}
else
{
%>
      <script type="text/javascript">
          window.alert("TPA Login Fail");
          window.location="TPA.jsp";
          </script>
      <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>