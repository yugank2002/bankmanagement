import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class signup extends HttpServlet
{
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
   String username = request.getParameter("username");
   String mobile = request.getParameter("mobile");
   String loginid = request.getParameter("loginid");
   String loginpwd = request.getParameter("loginpwd");
   

Connection con =null;
Statement st =null;
ResultSet rt =null;

try
   {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
    st = con.createStatement();


StringBuffer query = new StringBuffer(1024);
query.append("insert into login(username,mobile,loginid,loginpwd) values(");
query.append("'").append(username).append("','").append(mobile).append("','").append(loginid).append("','").append(loginpwd).append("')");


	System.out.println( query.toString() );
	
	st.executeUpdate( query.toString() );
st.close();
con.close();

PrintWriter out = response.getWriter();
out.write("<html><body>");
out.write("Signed Up Sucessfully<br>");
out.write("</body></html>");
   }

	catch(Exception e)
	{
	  System.out.println(e);
	}



   }
}
/*   
    //command to compile index.java open cmd type below command, cmd must point to d:\Tomcat\webapps\bank\WEB-INF\classes
      javac -cp '.;D:/Tomcat/lib/servlet-api.jar;D:/Tomcat/lib/jsp-api.jar' signup.java
*/

