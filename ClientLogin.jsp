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
    String role1=request.getParameter("role");

    try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/public","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from client where uname='"+uname+"' and password='"+password+"'");
if(rs.next())
{
    
  
     String status=rs.getString("status");
     if(status.equals("Joined")){
   
    if(role1.equals("Clinic")){
        String email=rs.getString("email");
       
    session.setAttribute("email",email);
    session.setAttribute("id",rs.getString("id"));
        session.setAttribute("uname",rs.getString("uname"));
        session.setAttribute("data","Clinic");
         
    %>
      <script type="text/javascript">
          window.alert("Clinic Login Sucessfully");
          window.location="HomePage.jsp";
          </script>
      <% 
    }
if(role1.equals("Healthcare")){
        String email=rs.getString("email");
       
    session.setAttribute("email",email);
    session.setAttribute("id",rs.getString("id"));
        session.setAttribute("uname",rs.getString("uname"));
session.setAttribute("data","Healthcare");
    %>
      <script type="text/javascript">
          window.alert("Healthcare Login Sucessfully");
          window.location="HomePage.jsp";
          </script>
      <% 
    }

if(role1.equals("Hospital")){
        String email=rs.getString("email");
       
    session.setAttribute("email",email);
    session.setAttribute("id",rs.getString("id"));
        session.setAttribute("uname",rs.getString("uname"));
session.setAttribute("data","Hospital");
    %>
      <script type="text/javascript">
          window.alert("Hospital Login Sucessfully");
          window.location="HomePage.jsp";
          </script>
      <% 
    }

if(role1.equals("MedicineCenter")){
        String email=rs.getString("email");
       
    session.setAttribute("email",email);
    session.setAttribute("id",rs.getString("id"));
        session.setAttribute("uname",rs.getString("uname"));
session.setAttribute("data","MedicineCenter");
    %>
      <script type="text/javascript">
          window.alert("MedicineCenter Login Sucessfully");
          window.location="HomePage.jsp";
          </script>
      <% 
    }
if(role1.equals("Insurance")){
        String email=rs.getString("email");
       
    session.setAttribute("email",email);
    session.setAttribute("id",rs.getString("id"));
        session.setAttribute("uname",rs.getString("uname"));
session.setAttribute("data","Insurance");
    %>
      <script type="text/javascript">
          window.alert("Insurance Login Sucessfully");
          window.location="HomePage.jsp";
          </script>
      <% 
    }

}else if(status.equals("waiting")){
%>
      <script type="text/javascript">
          window.alert("Your Account Not Activated By Manager");
          window.location="Client.jsp";
          </script>
      <%
}else{
%>
      <script type="text/javascript">
          window.alert("Your Account Got Revoked");
          window.location="Client.jsp";
          </script>
      <%
}
   
          
}
else
{
%>
      <script type="text/javascript">
          window.alert(" Login Fail");
          window.location="Client.jsp";
          </script>
      <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>