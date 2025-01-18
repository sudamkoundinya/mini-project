<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
  
    String address=request.getParameter("address");
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    String role=request.getParameter("role");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/public","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select count(*) from client where email='"+email+"' and role='"+role+"'");
if(rs.next())
{
  int count=rs.getInt(1);
  if(count==0)
  {
      int i=st.executeUpdate("insert into client values(null,'"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+password+"','"+role+"','waiting')");
  if(i>0)
  {
      %>
      <script type="text/javascript">
          window.alert("Client Regiatration Completed");
          window.location="Client.jsp";
          </script>
      <%
  }
else
{
%>
      <script type="text/javascript">
          window.alert("Client Regiatration Fail");
          window.location="Client.jsp";
          </script>
      <%
}
  }
%>
      <script type="text/javascript">
          window.alert("Client Already Exist");
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