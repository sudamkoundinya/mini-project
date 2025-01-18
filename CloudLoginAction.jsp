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
  
if(uname.equalsIgnoreCase("Cloud")&&password.equalsIgnoreCase("Cloud"))
{
   
    %>
      <script type="text/javascript">
          window.alert("Cloud Login Sucessfully");
          window.location="CloudHome.jsp";
          </script>
      <%
          
}
else
{
%>
      <script type="text/javascript">
          window.alert("Cloud Login Fail");
          window.location="Cloud.jsp";
          </script>
      <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>