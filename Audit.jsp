<%-- 
    Document   : Activate
    Created on : Jan 21, 2020, 12:41:31 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
String id=request.getParameter("id");

try{
  
    String query="select * from patient where id='"+id+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
        String modify=i.getString("modify");
        if(modify.equals("waiting")){
            %>
       <script type="text/javascript">
           window.alert("Audit SuccessFully..!!\n\Data is Safe ..!!");
           window.location="TPA_PatientRecords.jsp";
           </script>
          <%
        }else{
Queries.getExecuteUpdate("insert into audit values('"+id+"',now(),'Data Modified')");
%>
       <script type="text/javascript">
           window.alert("Audit SuccessFully..!!\n\Data is Not Safe it is modified ..!!");
           window.location="TPA_PatientRecords.jsp";
           </script>
          <%
}
    
    
}else{
 %>
       <script type="text/javascript">
           window.alert("Auditing Failed..!!");
           window.location="TPA_PatientRecords.jsp";
           </script>
          <%
}
    
}catch(Exception e){
  out.println(e);  
}
%>