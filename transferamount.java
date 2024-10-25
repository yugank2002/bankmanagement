import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class transferamount extends HttpServlet
{
  public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
  { 

String button=request.getParameter("button");

if(button.equals("1"))
{    
    try
	{
	System.out.println("transferamountsource get function called at server");
	
	StringBuffer datatosend=new StringBuffer(1024);
	datatosend.append("<?xml version=\"1.0\"?>");
	datatosend.append("<data>");

	String source=request.getParameter("source");
	System.out.println("AccountNo.="+source);

	Connection con=null;
	Statement st=null;
	ResultSet rt=null;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
st=con.createStatement();

	rt=st.executeQuery("select name,balance from account where accno="+source);
	while(rt.next())
	{
	 datatosend.append("<member>");
	datatosend.append("<name>").append(rt.getString("name")).append("</name>");
	datatosend.append("<balance>").append(rt.getInt("balance")).append("</balance>");
	datatosend.append("<accno>").append(source).append("</accno>");
	datatosend.append("</member>");
	}
rt.close();
st.close();
con.close();
	datatosend.append("</data>");

		response.setContentType("text/xml");
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);
		
		response.getWriter().write(datatosend.toString());
		response.getWriter().flush();

System.out.println(datatosend.toString());
	}
catch(Exception e)
{
System.out.println(e);
}
}

if(button.equals("2"))
{ 
    try
	{
	System.out.println("transferamountdest get function called at server");
	
	StringBuffer datatosend=new StringBuffer(1024);
	datatosend.append("<?xml version=\"1.0\"?>");
	datatosend.append("<data>");

	String dest=request.getParameter("dest");
	System.out.println("AccountNo.="+dest);

	Connection con=null;
	Statement st=null;
	ResultSet rt=null;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
st=con.createStatement();

	rt=st.executeQuery("select name,balance from account where accno="+dest);
	while(rt.next())
	{
	 datatosend.append("<member>");
	datatosend.append("<name>").append(rt.getString("name")).append("</name>");
	datatosend.append("<balance>").append(rt.getInt("balance")).append("</balance>");
	datatosend.append("<accno>").append(dest).append("</accno>");
	datatosend.append("</member>");
	}
rt.close();
st.close();
con.close();
	datatosend.append("</data>");

		response.setContentType("text/xml");
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);
		
		response.getWriter().write(datatosend.toString());
		response.getWriter().flush();

System.out.println(datatosend.toString());
	}
catch(Exception e)
{
System.out.println(e);
}

}

}

public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
  try
	{
	String html_accno1=request.getParameter("accno1");
	String html_accno2=request.getParameter("accno2");
	String html_remark=request.getParameter("remark");
	String html_transfer_amount=request.getParameter("new_transfer_amount");

Connection con=null;
	Statement st=null;
	ResultSet rt=null;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
st=con.createStatement();

StringBuffer query=new StringBuffer();
query.append("update account set balance=balance+").append(html_transfer_amount);
query.append(" where accno=").append(html_accno2);

System.out.println(query.toString());
st.executeUpdate(query.toString());

query.delete(0,query.length());

query.append("update account set balance=balance-").append(html_transfer_amount);
query.append(" where accno=").append(html_accno1);

System.out.println(query.toString());
st.executeUpdate(query.toString());

query.delete(0,query.length());


query.append("insert into transaction(accno,date,time,deposit,withdraw,remark)");
query.append("values(").append(html_accno2).append(",curdate(),curtime(),");
query.append(html_transfer_amount).append(",0,'").append(html_remark).append("')");

System.out.println(query.toString());
st.executeUpdate(query.toString());

query.delete(0,query.length());

query.append("insert into transaction(accno,date,time,deposit,withdraw,remark)");
query.append("values(").append(html_accno1).append(",curdate(),curtime(),");
query.append("0,").append(html_transfer_amount).append(",'").append(html_remark).append("')");



System.out.println(query.toString());
st.executeUpdate(query.toString());

		response.setContentType("text/html");
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);

		response.getWriter().write("Successfully Executed");
		response.getWriter().flush();

	}
catch(Exception e)
{
System.out.println(e);
}
}
}


/*   
    //command to compile index.java open cmd type below command, cmd must point to d:\Tomcat\webapps\bank\WEB-INF\classes
      javac -cp '.;D:/Tomcat/lib/servlet-api.jar;D:/Tomcat/lib/jsp-api.jar' transferamount.java
*/