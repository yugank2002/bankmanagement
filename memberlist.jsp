<%@page import = "java.sql.*"%>
<html>
  <head>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
			.main{
				width:100%;
				height:auto;
				background-color: antiquewhite;
				

			}
      .page{
        margin-top:3vw;
        width:100%;
        height:calc(100% - 7.5vw)
      }

			.nav{
        width:100%;
        height:4.5vw;
        background: linear-gradient(to bottom right , #01b88a,#02be3a);
		display: flex;
		align-items: center;
		

        h1{
            
            text-transform: uppercase;
            font-size: 2.5vw;
            font-weight: 400;
            color: white;
			padding-left:3vw;
            font-family: 'Poppins', sans-serif;
            
        }
    }

    @media screen and (max-width: 1000px) {
      .main{
        width:fit-content;
        height: auto;
      }
    }
    </style>
  </head>
<head><title>signup</title></head>
<body>

  <div class="main">
    <div class="nav">
      <h1>Member List:</h1>
    </div>

    <div class="page">
      <table border=1>
        <tr>
        <td><b>Accno.</td>
        <td><b>Name</td>
        <td><b>Gender</td>
        <td><b>Mobile No</td>
        <td><b>Email ID</td>
        <td><b>Address</td>
        <td><b>DOB</td>
        <td><b>Adhaar No</td>
        <td><b>Pan No</td>
        <td><b>Branch</td>
        <td><b>Facility</td>
        <td><b>Date</td>
        <td><b>Time</td>
        <td><b>Balance</td>
        </tr>
        <% 
        Connection con =null;
        Statement st =null;
        ResultSet rt =null;
        
        try
           {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
            st = con.createStatement();
        
        StringBuffer query = new StringBuffer();
        query.append("select accno,name,gender,mobileno,emailid,address,dob,adhaarno,panno,branch,facility,date,time,balance from account");
        rt=st.executeQuery(query.toString()); 
        
          while(rt.next())
        {
         %>
        
        <tr>
        <td><%=rt.getInt("accno")%></td>
        <td><%=rt.getString("name")%></td>
        <td><%=rt.getString("gender")%></td>
        <td><%=rt.getString("mobileno")%></td>
        <td><%=rt.getString("emailid")%></td>
        <td><%=rt.getString("address")%></td>
        <td><%=rt.getString("dob")%></td>
        <td><%=rt.getString("adhaarno")%></td>
        <td><%=rt.getString("panno")%></td>
        <td><%=rt.getString("branch")%></td>
        <td><%=rt.getString("facility")%></td>
        <td><%=rt.getString("date")%></td>
        <td><%=rt.getString("time")%></td>
        <td><%=rt.getString("balance")%></td>
        </tr>
        
        <%
        }//while
        rt.close();
        st.close();
        con.close();
        }//try
        catch(Exception e)
          {
            out.write(e.toString());
          }
        %>
    </div>
  </div>


   
</body>
</html>