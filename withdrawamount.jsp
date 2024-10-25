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
                width:58vw;
                height:35vw;
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
    display:flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;

    .first{
       
        width:100%;
        display: flex;
        justify-content: start;
        align-items: center;
        margin:10px;
        
    }
    .second{
        
        width:100%;
        display: flex;
        justify-content: start;
        align-items: center;
        margin:10px;
        gap:50px;
    }
    .third{
       
        width:100%;
        display: flex;
        justify-content: start;
        align-items: center;
        margin:10px;
        gap:50px;
    }

    .acc{
            input{
                border:#00e97c 2px solid;
            }
        }

    .input{
       
        width:15vw;
        
        
        margin-left: 20px;
        font-size: 1.1vw;
        font-family:'Poppins', sans-serif;
        margin-top: 15px;

        span{
            text-transform: uppercase;
            
        }
        

        input{
                height:2vw;
                
                
                border-radius: 5px;
            }
            .address{
                border-radius: 5px;
            }
            .select{
                border-radius: 5px;
                width:160px;
                height:40px;
                font-size: 18px;
                
            }
            input[type=text]{
                width:100%;
                height: 2.5vw;
            }
    }

    .submit{
       
        width:100%;
        height:50px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 50px;

        input[type=button]{
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
        input[type=button]:hover{
            color:#01b88a;
            background: white;
            border: 1px solid #01b88a;
        }
    }
}

@media  (max-width: 1000px) {
    .container{
        height:50vw;
       
    }
    .main{
        height:100%;
        width:100%;
    }
}

        </style>
    </head>
<body>

<script>
var xmlhttp=null;
function search_accno()
{
 try
    {
      //alert("searchaccno is called");
	var accno = document.getElementById("search").value;
	if(accno.length == 0)
	return false;

	var url="withdrawamount?search="+accno;
             //alert(url);

xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange = handleServerResponse;
xmlhttp.open("Get",url,true);
xmlhttp.send();

//alert(url);
    }
catch(e)
{
alert(e);
return false;
}
}

function handleServerResponse()
{
  try
   {
      if(xmlhttp.readyState == 4)
       {
          if(xmlhttp.status == 200)
	   {
             

		document.getElementById("account_name").value="";
		document.getElementById("balance").value="";
		document.getElementById("accno").value="";

		var xx,j=0;
		var temp;
			var x=xmlhttp.responseXML.documentElement.getElementsByTagName("member");
			
			for(var i=0;i<x.length;i++)
			{
			xx=x[i].getElementsByTagName("name");
			var name=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("balance");
			var balance=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("accno");
			var accno=xx[0].firstChild.nodeValue;

			document.getElementById("account_name").value=name;
			document.getElementById("balance").value=balance;
			document.getElementById("accno").value=accno;

if(document.getElementById("search")==null)
{
		document.getElementById("account_name").value="";
		document.getElementById("balance").value="";
		document.getElementById("accno").value="";

}
			}
xmlhttp=null;
	   }
       }
   }
catch(e)
{
console.log(e);
alert(e);
}
}
</script>


<div class="main">
	<div class="container">
		<div class="heading">
			<h1>Withdraw Amount:</h1>
		</div>
		
		<div class="content">
			<div class="first">
                <div class="input acc">
					<span>Enter account number</span><br>
					<input type="text" onKeyUp="search_accno()" name="search" id="search">
				</div>
            </div>
				
			

			<div class="second">
                <div class="input">
					<span>Account Name</span><br>
					<input type="text" value="" readonly="true" name="account_name" id="account_name">
				</div>
				<div class="input">
					<span>balance</span><br>
					<input type="text" value="" readonly="true" name="balance" id="balance">
				</div>
				<div class="input">
					<span>Account number</span><br>
					<input type="text" value="" readonly="true" name="accno" id="accno">
				</div>
            </div>
				
			
			
			<div class="third">
                <div class="input">
                    <span>Enter withdraw amount</span><br>
                    <input type="text" value="" name="new_withdraw_amount" id="new_withdraw_amount" maxlength="5">
                </div>
                <div class="input">
                    <span>remark</span><br>
                    <textarea rows="3" cols="25" name="remark" id="remark"></textarea>
                </div>
            </div>
			
			
		
			
			<div class="submit">
				<input type="button" value="Proceed" onClick="withdraw_amount()">
			</div>

		</div>
	</form>
	</div>
</div>



<script type="text/javascript">
function withdraw_amount()
{
try
{
	var accno = document.getElementById("accno").value;
	if(Number(accno)==0)
	{
	 alert("Please Search Account Number");
	 document.getElementById("search").focus();
	 return false;
	}
	var new_withdraw_amount=document.getElementById("new_withdraw_amount").value;
	if(isNaN(new_withdraw_amount))
	{
		alert("Numeric Required");
		document.getElementById("new_withdraw_amount").focus();
		return false;
	}
	
	new_withdraw_amount=Math.round(new_withdraw_amount);
	document.getElementById("new_withdraw_amount").value=new_withdraw_amount;

	if(Number(new_withdraw_amount)<=0)
	{
		alert("Greater Number Required");
		document.getElementById("new_withdraw_amount").focus();
		return false;
	}
var balance = document.getElementById("balance").value;
if(Number(new_withdraw_amount)>=Number(balance))
	{
		alert("Not enough Amount");
		return false;
	}

	var con=confirm("Are You Sure To Continue");
	if(con==false)
	return false;

var url="withdrawamount?accno="+accno;
url=url+"&new_withdraw_amount="+new_withdraw_amount;
url=url+"&remark="+document.getElementById("remark").value;

xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange = handleServerResponse_deposit;
xmlhttp.open("POST",url,true);
xmlhttp.send();
}

catch(e)
{
alert(e);
return false;
}

}

function handleServerResponse_deposit()
{
try
{
	if(xmlhttp.readyState == 4)
	{
	if(xmlhttp.status == 200)
	{
	alert(xmlhttp.responseText);
		document.getElementById("account_name").value="";
		document.getElementById("balance").value="";
		document.getElementById("accno").value="";

		document.getElementById("new_withdraw_amount").value="";
		document.getElementById("remark").value="";
		document.getElementById("search").value="";
          xmlhttp=null;
	}
	}
}
catch(e)
{
alert(e);
}
}

</script>
</body>

</html>