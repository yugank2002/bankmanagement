<html>
	<head>
		<style>
			@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
			.main{
				width:100%;
				height:auto;
				background-color: antiquewhite;
				

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

	.page{
		width:100%;
	
		display: flex;
		align-items: center;
		justify-content: space-evenly;
		margin: 3vw 0;

		.input{
			
			font-size: 1.4vw;
       		 font-family:'Poppins', sans-serif;

				input[type=text]{
                border-radius: 5px;
				width:15vw;
                height: 2.3vw;
            }
		}
	}

	.page2{
		width:100%;
		height:calc(100% - 13vw);
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

	var url="ministatement?search="+accno;
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
             
		console.log(xmlhttp.responseText);
		document.getElementById("account_name").value="";
		document.getElementById("balance").value="";
		

		var xx,j=0;
		var temp;
			var x=xmlhttp.responseXML.documentElement.getElementsByTagName("member");
			
			for(var i=0;i<x.length;i++)
			{
			xx=x[i].getElementsByTagName("name");
			var name=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("balance");
			var balance=xx[0].firstChild.nodeValue;

			

			document.getElementById("account_name").value=name;
			document.getElementById("balance").value=balance;
			

			}
var table = document.getElementById("idtable");
var rowCount = table.rows.length;

for(var loop=1;loop<rowCount;loop++)
table.deleteRow(1);

var x=xmlhttp.responseXML.documentElement.getElementsByTagName("transaction");
		for(var i=0;i<x.length;i++)
			{
			xx=x[i].getElementsByTagName("date");
			var date=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("time");
			var time=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("deposit");
			var deposit=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("withdraw");
			var withdraw=xx[0].firstChild.nodeValue;

			xx=x[i].getElementsByTagName("remark");
			if( xx[0].firstChild!=null )
			var remark=xx[0].firstChild.nodeValue;

tr=document.createElement('tr');

	td = document.createElement('td');
	td.innerHTML=date;
	tr.appendChild(td);

	td = document.createElement('td');
	td.innerHTML=time;
	tr.appendChild(td);

	td = document.createElement('td');
	td.innerHTML=deposit;
	tr.appendChild(td);

	td = document.createElement('td');
	td.innerHTML=withdraw;
	tr.appendChild(td);

	td = document.createElement('td');
	td.innerHTML=remark;
	tr.appendChild(td);
			
table.getElementsByTagName("tbody")[0].appendChild(tr);

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
		<h1>mini statement:</h1>
	</div>

	<div class="page">
		<div class="input">
			<span>Enter Account No:</span>
			<td><input type="text" onKeyUp="search_accno()" name="search" id="search"></td>
		</div>
		<div class="input">
			<span>Account Name:</span>
			<input type="text" value="" readonly="true" name="account_name" id="account_name"></td>
		</div>
		<div class="input">
			<span>Balance:</span>
			<input type="text" value="" readonly="true" name="balance" id="balance"></td>
		</div>


		
	</div>
 <div class="page2">
	<table border="1" align="center" cellpadding="2" id="idtable" style="border-collapse:collapse;">
		<tbody>
		<tr>
		<td>Date</td>
		<td>Time</td>
		<td>Deposit</td>
		<td>Withdraw</td>
		<td>Remark</td>
		</tr>
		</tbody>
		
		</table>
 </div>
	
</div>

<br><br>




</body>

</html>