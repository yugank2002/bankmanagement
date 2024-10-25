<html>
	<head>
		<style>
			@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
			.main{
				width:100%;
				height:auto;
				background-color: antiquewhite;
				font-family: 'Poppins', sans-serif;

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
	.start{
		width:100%;
		display:flex;
	}

	.page{
		width:100%;
	    height:calc(100vh - 4.5vw);
		
		
	}

	.left{
		width:50%;
		height:70%;
		
		display:flex;
		flex-direction: column;
		align-items: center;
		font-size: 1.2vw;
		
	}
	.right{
		width:50%;
		height:70%;
		
		display:flex;
		flex-direction: column;
		align-items: center;
		font-size: 1.2vw;
	}
	.first{
	
		margin:4vw 0;
		input{
			border-radius: 5px;
				height:2vw;
				width:15vw;
		}
	}
	.second{
		width:50%;
		
		display: flex;
		flex-direction: column;
		padding:6px 0;
		gap:10px;

		
	}
	.input{
		
			display:flex;
			align-items: center;
			justify-content: space-between;
			
			input{
				border-radius: 5px;
				height:2vw;
				width:50%;
			}
		}

	.last{
		display:flex;
		flex-direction: column;
		gap:10px;
		background-color: white;
        border-radius: 10px;
        box-shadow: 0 0 20px 0 rgba(0,0,0,0.2);
		margin:5vw 35%;
		width:30%;
		padding:15px;
		
		.submit{
       
       width:100%;
       height:50px;
       display: flex;
       align-items: center;
       justify-content: center;
       margin-top: 15px;

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
		</style>

	</head>
<body>

<script>
var xmlhttp=null;
function source()
{ 
 try
    {
      //alert("source is called");
	var accno = document.getElementById("source").value;
	if(accno.length == 0)
	return false;

	var url="transferamount?source="+accno;
        url=url+"&button=1";
             //alert(url);

xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange = handleServerResponse1;
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

function handleServerResponse1()
{
  try
   {
      if(xmlhttp.readyState == 4)
       {
          if(xmlhttp.status == 200)
	   {
             //alert("reponded");

		document.getElementById("account_name1").value="";
		document.getElementById("balance1").value="";
		document.getElementById("accno1").value="";

		var xx,j=0;
		var temp;
			var x=xmlhttp.responseXML.documentElement.getElementsByTagName("member");
			//alert("ok")
			for(var i=0;i<x.length;i++)
			{
			xx=x[i].getElementsByTagName("name");
			var name=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("balance");
			var balance=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("accno");
			var accno=xx[0].firstChild.nodeValue;

			document.getElementById("account_name1").value=name;
			document.getElementById("balance1").value=balance;
			document.getElementById("accno1").value=accno;


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


function dest()
{ 
 try
    {
      //alert("dest is called");
	var accno = document.getElementById("dest").value;
	if(accno.length == 0)
	return false;

	var url="transferamount?dest="+accno;
	url=url+"&button=2";
             //alert(url);

xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange = handleServerResponse2;
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

function handleServerResponse2()
{
  try
   {
      if(xmlhttp.readyState == 4)
       {
          if(xmlhttp.status == 200)
	   {
             

		document.getElementById("account_name2").value="";
		document.getElementById("balance2").value="";
		document.getElementById("accno2").value="";

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

			document.getElementById("account_name2").value=name;
			document.getElementById("balance2").value=balance;
			document.getElementById("accno2").value=accno;


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
	<div class="nav">
		<h1>Transfer Amount:</h1>
	</div>
	<div class="page">
		<div class="start">
			<div class="left">
				<div class="first">
					<span>Enter Sender's Account No:</span>
				<input type="text" onKeyUp="source()" name="source" id="source">
	
				</div>
	
				<div class="second">
					<div class="input">
						<span>Account Name:</span>
						<input type="text" value="" readonly="true" name="account_name1" id="account_name1">
					</div>
					<div class="input">
						<span>Balance:</span>
						<input type="text" value="" readonly="true" name="balance1" id="balance1">
					</div>
					<div class="input">
						<span>Account number:</span>
						<input type="text" value="" readonly="true" name="accno1" id="accno1">
					</div>
					
					
				</div>
				
			</div>
			<div class="right">
				<div class="first">
					<span>Enter Receiver's Account No:</span>
				<input type="text" onKeyUp="dest()" name="dest" id="dest">
				</div>
	
				<div class="second">
					<div class="input">
						<span>Account Name:</span>
						<input type="text" value="" readonly="true" name="account_name2" id="account_name2">
					</div>
					<div class="input">
						<span>Balance:</span>
						<input type="text" value="" readonly="true" name="balance2" id="balance2">
					</div>
					<div class="input">
						<span>Account number:</span>
						<input type="text" value="" readonly="true" name="accno2" id="accno2">
					</div>
					
				</div>
				
			</div>
		</div>
		

		<div class="last">
			<div class="input">
				<span>Enter Transfer Amount:</span>
				<input type="text" value="" name="new_transfer_amount" id="new_transfer_amount" maxlength="5">
			</div>
			<div class="input">
				<span>Remark:</span>
				<textarea rows="3" cols="25" name="remark" id="remark"></textarea>
			</div>
			<div class="submit">
				<input type="button" value="Proceed" onClick="transfer_amount()">
			</div>
			
		</div>
	</div>
</div>


<script type="text/javascript">
function transfer_amount()
{
try
{
	var accno1 = document.getElementById("accno1").value;
	if(Number(accno1)==0)
	{
	 alert("Please Search Sender's Account Number");
	 document.getElementById("search").focus();
	 return false;
	}

	var accno2 = document.getElementById("accno2").value;
	if(Number(accno2)==0)
	{
	 alert("Please Search Receiver's Account Number");
	 document.getElementById("search").focus();
	 return false;
	}

	var new_transfer_amount=document.getElementById("new_transfer_amount").value;
	if(isNaN(new_transfer_amount))
	{
		alert("Numeric Required");
		document.getElementById("new_deposit_amount").focus();
		return false;
	}
	
	new_transfer_amount=Math.round(new_transfer_amount);
	document.getElementById("new_transfer_amount").value=new_transfer_amount;

	if(Number(new_transfer_amount)<=0)
	{
		alert("Greater Number Required");
		document.getElementById("new_transfer_amount").focus();
		return false;
	}

	if(document.getElementById("balance1").value < new_transfer_amount)
	{
		alert("not Enough Amount in Sender's Account");
		document.getElementById("new_transfer_amount").focus();
		return false;
	}

	var con=confirm("Are You Sure To Continue");
	if(con==false)
	return false;

var url="transferamount?accno1="+accno1;
url=url+"&accno2="+accno2;
url=url+"&new_transfer_amount="+new_transfer_amount;
url=url+"&remark="+document.getElementById("remark").value;

xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange = handleServerResponse_transfer;
xmlhttp.open("POST",url,true);
xmlhttp.send();
}

catch(e)
{
alert(e);
return false;
}

}

function handleServerResponse_transfer()
{
try
{
	if(xmlhttp.readyState == 4)
	{
	if(xmlhttp.status == 200)
	{
	alert(xmlhttp.responseText);
		document.getElementById("account_name1").value="";
		document.getElementById("account_name2").value="";
		document.getElementById("balance1").value="";
		document.getElementById("balance2").value="";
		document.getElementById("accno1").value="";
		document.getElementById("accno2").value="";

		document.getElementById("new_transfer_amount").value="";
		document.getElementById("remark").value="";
		document.getElementById("source").value="";
		document.getElementById("dest").value="";
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