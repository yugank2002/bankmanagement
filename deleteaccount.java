import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class deleteaccount extends HttpServlet
{
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
   String accno = request.getParameter("accno");
   
   int a=0;

Connection con =null;
Statement st =null;
ResultSet rt =null;

try
   {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
    st = con.createStatement();


StringBuffer query = new StringBuffer(1024);
query.append("delete from account where accno=").append(accno);


	System.out.println( query.toString() );
	
	st.executeUpdate( query.toString() );
st.close();
con.close();

PrintWriter out = response.getWriter();
out.write("<html><body>");
out.write("Account number "+accno);
out.write(" deleted successfully");
out.write("</body></html>");
   }

	catch(Exception e)
	{
	PrintWriter out = response.getWriter();
	  out.write("<html><body>");
	out.write("Invalid Account Number"+e);
	out.write("</body></html>");
	}



   }
}
/*   
    //command to compile index.java open cmd type below command, cmd must point to d:\Tomcat\webapps\bank\WEB-INF\classes
      javac -cp '.;D:/Tomcat/lib/servlet-api.jar;D:/Tomcat/lib/jsp-api.jar' deleteaccount.java
*/

