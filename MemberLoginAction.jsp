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
  
if(uname.equalsIgnoreCase("Manager")&&password.equalsIgnoreCase("Manager"))
{
   
    %>
      <script type="text/javascript">
          window.alert("Manager Login Sucessfully");
          window.location="MemberHome.jsp";
          </script>
      <%
          
}
else
{
%>
      <script type="text/javascript">
          window.alert("Manager Login Fail");
          window.location="GMember.jsp";
          </script>
      <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>