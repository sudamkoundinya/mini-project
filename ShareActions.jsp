<%@page import="java.sql.*"%>
<%
 String id=(String)session.getAttribute("id");
 
    
    String pid=request.getParameter("pid");
    String gmid=request.getParameter("gmid");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/public","root","root");
Statement st = con.createStatement();

      int i=st.executeUpdate("insert into share values(null,'"+id+"','"+pid+"','"+gmid+"')");
  if(i>0)
  {
      %>
      <script type="text/javascript">
          window.alert("Data Shared Completed");
          window.location="SearchData.jsp";
          </script>
      <%
  }
else
{
%>
      <script type="text/javascript">
          window.alert("Sharing Fail");
          window.location="SearchData.jsp";
          </script>
      <%
}
  
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>