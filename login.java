import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class login extends HttpServlet
{
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
   String html_loginid=request.getParameter("loginid");
   String html_loginpwd= request.getParameter("loginpwd");

	Connection con =null;
	Statement st =null;
	ResultSet rt =null;

	try
	{
	  Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
	  st = con.createStatement();

int found=0;
rt = st.executeQuery("select loginid,loginpwd from login");
while ( rt.next() )
{
	String db_loginid = rt.getString("loginid");
	String db_loginpwd = rt.getString("loginpwd");

		if(html_loginid.equals(db_loginid) )
		{
		  if(html_loginpwd.equals(db_loginpwd) )
		   {
                      found=1;
                      break;
		    }
		     found=2;
                     break;
                   }
		}
           rt.close();
           st.close();
           con.close();
   
           if(found==1)
		{
		  RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/menu.jsp");
		  rd.forward(request,response);
                }
            else
               {
		 RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/invalidlogin.jsp");
		  rd.forward(request,response);
                }

 /*  PrintWriter out = response.getWriter();
   out.write("<html><body>");
   out.write("<u>Server Response:</u><br>");
	if( found==0 )
   	out.write("Wrong Username And Password");
	else if( found==2 )
   	out.write("Wrong Password<br>Try another Password");
        else
        out.write("Login Successful");
   out.write("</body></html>"); */
}
catch(Exception e)
{
  System.out.println(e);
}
}
}
/*   
    //command to compile index.java open cmd type below command, cmd must point to d:\Tomcat\webapps\bank\WEB-INF\classes
      javac -cp '.;D:/Tomcat/lib/servlet-api.jar;D:/Tomcat/lib/jsp-api.jar' login.java
*/

