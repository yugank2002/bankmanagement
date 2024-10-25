import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

import java.util.*;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

public class upload_photo extends HttpServlet
{
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
   String accno = null;

FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;

Iterator itr = null;
try
   {
    items = upload.parseRequest(request);
    itr = items.iterator();

	while(itr.hasNext())
	{
	  FileItem item = (FileItem) itr.next();

		if(item.isFormField()) //html form elements.
		{  
 		  String name = item.getFieldName();
		  String value = item.getString();

			if(name.equals("accno"))
			{  accno=value; }
		}
else
{ String itemName = item.getName();
  String filename = "D:\\Tomcat\\webapps\\bank\\images\\"+accno+".jpg";
  System.out.println(filename);
    File savedFile = new File(filename);
    item.write(savedFile);
  }

}//while

response.getWriter().print("Successfully Saved");
}
catch(Exception e)
{
  System.out.println(e);
}

}
}


/*   
    //command to compile above code, open cmd type below command, cmd must point to d:\Tomcat\webapps\bank\WEB-INF\classes
      javac -cp '.;D:/Tomcat/lib/commons-fileupload-1.4.jar;D:/Tomcat/lib/servlet-api.jar' upload_photo.java
*/

