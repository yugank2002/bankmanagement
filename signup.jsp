<html>
  <head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            
            .main{
                width:100%;
                height:100vh;
                background-color: antiquewhite;
                display:flex;
                align-items: center;
                justify-content: center;
            }
            .container{
                width:40vw;
                height:25vw;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 0 10px 0 rgba(0,0,0,0.2);
                display:flex;
                
                flex-direction: column;
                }
            .heading{
                width:100%;
                height:5vw;
                
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(to bottom right , #01b88a,#02eb48);
              h1{
                color: rgb(250, 250, 250);
                font-size: 2vw;
                padding-left: 1.5vw;
                padding-bottom:1vw;
                font-weight: 400;
              } 
            } 
            table{
              
              width:80%;
              height:70%;
              font-size: 1.3vw;
              font-family:'Poppins', sans-serif ;
              align-items: center;
              margin-top: 2vw;
              input{
                border-radius: 5px;
                height:2.1vw;
                width:16vw;
              }
            }

      .submit{
       
       width:100%;
       height:50px;
       display: flex;
       align-items: center;
       justify-content: center;
       margin-top: 15px;

       input[type=submit]{
           text-decoration: none;
           text-transform: uppercase;
           border-radius: 30px;
           font-size: 20px;
           font-weight: 600;
           color: white;
           background: linear-gradient(to bottom right , #01b88a,#02eb48);
           font-size: 1vw;
           transition:all ease 0.5s;
           padding: 14px 30px;
       }
       input[type=submit]:hover{
           color:#01b88a;
           background: white;
           border: 1px solid #01b88a;
       }
   }

   @media  (max-width: 1000px) {
    .container{
        height:35vw;
       
    }
    .main{
        height:100%;
        width:100%;
    }
}
    </style>
  </head>
<head><title>signup</title></head>
<body>

  <div class="main">
    <div class="container">
      <div class="heading">
        <h1>Fill Your Credentials:</h1>
      </div>
      
        <form method=post action="signup" onsubmit="return submitt()">
          <div class="content">
            <table align="center">
              <tr><td>UserName:</td><td><input type=text name="username" id="username" maxlength=35></td></tr>
              <tr><td>Mobile No:</td><td><input type="tel" name="mobile" id="mobile" value="+91-" maxlength=14></td></tr>
              <tr><td>Login Id:</td><td><input type=text name="loginid" id="loginid" maxlength="35"></td></tr>
              <tr><td>Login Password:</td><td><input type="password" name="loginpwd" id="loginpwd" maxlength=35></td></tr>
              <tr><td>Confirm Password:</td><td><input type=text name="cpassword" id="cpassword" maxlength=35></td></tr>
              <tr><td></td><td></td></tr>
            </table>
          </div>
          
         <div class="submit">
          <input type=submit value="Sign UP">
         </div>
          
          
          </form>
      
    </div>
  </div>
<script>
	function submitt()
	{
          try
          {
	   var username = document.getElementById("username").value;
	   var mobile = document.getElementById("mobile").value;
	   var loginid = document.getElementById("loginid").value;
           var loginpwd = document.getElementById("loginpwd").value;
	   var cpassword = document.getElementById("cpassword").value;

	if( username.length == 0 )
	    {
              alert("UserName Required");
              return false;
	     }

	if( mobile.length < 14 )
	    {
              alert("Wrong Mobile Number");
              return false;
	     }

	   if( loginid.length == 0 )
	    {
              alert("Login ID Required");
              return false;
	     }

           if( loginpwd.length == 0 )
	    {
              alert("Login Password Required");
              return false;
	     }

	  if( cpassword.length == 0 )
	    {
              alert("Please Confirmm The Password");
              return false;
	     }

	if( cpassword.length != loginpwd.length )
	    {
              alert("Please check the Password");
              return false;
	     }


            var conf = confirm("Are you Sure to Submit");
            if( conf == false)
            return false;
          }
    
     catch(e)
    {
      alert(e);
      return false;
    }
   return true;
}            
</script>




</body>
</html>