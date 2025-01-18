<%-- 
    Document   : UpdateActions
    Created on : 14 Jul, 2021, 5:58:05 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid=request.getParameter("pid");
String data=request.getParameter("data");

try{
   String Query="update patient set modify='Modified', data='"+data+"' where id='"+pid+"'";
   int i=Queries.getExecuteUpdate(Query);
   if(i>0){
       %>
       <script type="text/javascript">
           window.alert("Data Modified");
           window.location="ViewShareData.jsp";
           </script>
       <%
   }
else{
  %>
       <script type="text/javascript">
           window.alert("Data Not Modified");
           window.location="ViewShareData.jsp";
           </script>
       <%
}
    
}catch(Exception e){
  out.println(e);  
}


%>