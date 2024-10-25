import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class menu extends HttpServlet
{
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
    if( request.getParameter("createaccount")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/createaccount.jsp");
       rd.forward( request,response );
       return;
      }

    if( request.getParameter("depositamount")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/depositamount.jsp");
       rd.forward( request,response );
       return;
      }

    if( request.getParameter("withdrawamount")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/withdrawamount.jsp");
       rd.forward( request,response );
       return;
      }

    if( request.getParameter("signup")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/signup.jsp");
       rd.forward( request,response );
       return;
      }

    if( request.getParameter("memberlist")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/memberlist.jsp");
       rd.forward( request,response );
       return;
      }

    if( request.getParameter("deleteaccount")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/deleteaccount.jsp");
       rd.forward( request,response );
       return;
      }

if( request.getParameter("transferamount")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/transferamount.jsp");
       rd.forward( request,response );
       return;
      }

if( request.getParameter("ministatement")!= null )
     {
       RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/ministatement.jsp");
       rd.forward( request,response );
       return;
      }

 

   }
}
/*   
    //command to compile index.java open cmd type below command, cmd must point to d:\Tomcat\webapps\bank\WEB-INF\classes
      javac -cp '.;D:/Tomcat/lib/servlet-api.jar;D:/Tomcat/lib/jsp-api.jar' menu.java
*/

