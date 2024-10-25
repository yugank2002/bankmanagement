<html>

<head><title>signup</title>

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

.content{
  width:100%;
  height:30%;
 gap:15px;
  display:flex;
  justify-content: center;
  align-items: center;
  span{
    font-size: 1.2vw;
    font-family: 'Poppins', sans-serif;
  }
  input{
    border-radius: 5px;
    height:2vw;
  }
}
.submit{
       
       width:100%;
       height:50px;
       display: flex;
       align-items: center;
       justify-content: center;
       margin-top: 50px;

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
    
    .main{
        height:100%;
        width:100%;
    }
}

</style>
</head>
<body>

<script>
	function submitt()
	{
          try
          {
	   var accno = document.getElementById("accno").value;
	   

	if( accno.length == 0 )
	    {
              alert("Account Number Required");
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

<div class="main">
  <div class="container">
    <div class="heading">
      <h1>Delete Your Account:</h1>
    </div>
    <form method=post action="deleteaccount" onsubmit="return submitt()"></form>
    <div class="content">
      
        
       <span>Enter your Account Number:</span> 
      <input type=text name="accno" id="accno"></td></tr>
      </div>

      <div class="submit">
        <input type=submit value="Delete">
      </div>
       
        
        
        
        
    
  </form>
  </div>
</div>
<fieldset>
<p><font face="Corbel Light" size="5">Insert The Account you want to Delete:</font></p>


</body>
</html>