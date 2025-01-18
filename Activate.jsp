<%-- 
    Document   : Activate
    Created on : Jan 21, 2020, 12:41:31 PM
    Author     : Acer
--%>

<%@page import="com.database.connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
String id=request.getParameter("id");

try{
  
    String query="update client set status='Joined' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
    %>
       <script type="text/javascript">
           window.alert("Client Joined SuccessFully..!!");
           window.location="ClientDetails.jsp";
           </script>
          <%
    
}else{
 %>
       <script type="text/javascript">
           window.alert("Client Joining Failed..!!");
           window.location="ClientDetails.jsp";
           </script>
          <%
}
    
}catch(Exception e){
  out.println(e);  
}
%>