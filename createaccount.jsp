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
                width:35vw;
                height:40vw;
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
    margin:20px;
    align-items: start;
    
    font-size: 1vw;
    text-transform: uppercase;
    font-family:'Poppins', sans-serif ;
 
    
    .input{
        padding: 7px;
        display:flex;
        justify-content:space-between;
        gap:10px;
        
        width:32vw;
        
    }

    .gend{
        display:flex;
        justify-content: space-evenly;
        
        width:13vw;
    }
    input{
        border-radius: 5px;
        padding-left: 10px;
        font-size: 1.1vw;
        
    }

    .fac{
        display:flex;
        justify-content: space-evenly;
        font-size: .9vw;
        width:25vw;
        gap:1.5px;
       
    }


    

    .submit{
       
        width:100%;
        height:50px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 20px;
        

        input[type=submit]{
            text-decoration: none;
            text-transform: uppercase;
            border-radius: 30px;
           font-family:'Poppins', sans-serif;
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
}

@media screen and (max-width: 1000px) {
    .container{
        height:60vh;
        width:80vw;
        
    }
    .main{
        width:100%;
        height: 100%;
    }
    .content{
        width:70vw;
        height:60vh;
        
        display:flex;
        font-size: 3vw;
        margin-left: 5vw;
        
        .input{
            width:100%;
        }
        .gend{
        display:flex;
        justify-content: space-evenly;
       
        margin-left: 30vw;
        
    }
    .submit{
        input[type=submit]{
        font-size: 3vw;
        display:flex;
        justify-content: center;
        align-items: center;
        margin-top: 8vw;
        font-family:'Poppins', sans-serif;
    }
    }
    

    .fac{
        display:flex;
        justify-content: space-evenly;
        font-size: 2vw;
        width:50vw;
        gap:2vw;
       
       
    }

    .Gender{
        display:flex;
        justify-content: start;
    }

            input{
            display:flex;
            justify-content: space-between;
            
            width:30vw;
        }
    }
}
        </style>
    </head>
<body>
    <div class="main">
        <div class="container">
            <div class="heading">
                <h1>Create Account:</h1>
            </div>
            <form method=post action=createaccount>
            <div class="content">

                <div class="input">
                    <span>Name : </span>
                   <input type="text" name="name" id="name" maxlength=35 placeholder="Enter Your Name" required>
                    
                    
                </div>
                <div class="input Gender">
                    <span>Gender : </span>
                    <div class="gend">
                        <input type="radio" value="M" name="gender" id="gender">Male
                    <input type="radio" value="F" name="gender" id="gender">Female
                    </div>
                    
                </div>
                <div class="input">
                    <span>mobile number : </span>
                    <input type="tel" name="mobileno" value="+91 " maxlength=14>
                </div>
                <div class="input">
                    <span>emailid : </span>
                    <input type="text" name="emailid" id="email" maxlength=75 placeholder="Enter Your Email ID">
                </div>
                <div class="input">
                    <span>address : </span>
                    <textarea class="address"rows=3 cols=25 name="address" id="address" placeholder="Enter Your Full Address"></textarea>
                </div>
                <div class="input">
                    <span>date of birth : </span>
                    <input type="date" name="dob" id="dob">
                </div>
                <div class="input">
                    <span>adhaar number : </span>
                    <input type="text" name="adhaarno" id="adhaarno" maxlength=20 placeholder="Enter Your Adhaar Number">
                </div>
                <div class="input">
                    <span>pan number : </span>
                    <input type="text" name="panno" id="panno" maxlength=10 placeholder="Enter Your Pan Number">
                </div>
                <div class="input">
                    <span>branch : </span>
                    <select class="select" name="branch" id="branch">
                        <option class="option" value="Graphic Era" selected>GEU</option>
                        <option class="option" value="SGRRU">SGRRU</option>
                        <option class="option" value="BFIT">BFIT</option>
                        <option class="option" value="UTU">UTU</option>
                        <option class="option" value="ITUS">ITUS</option></select>
                </div>
                <div class="input">
                    <span>facility : </span>
                    <div class="fac">
                        <input type=checkbox name="facility_internet_banking" id="facility_internet_banking" value=" Internet Banking ">Internet Banking
                    <input type=checkbox name="facility_sms" id="facility_sms" value=" SMS ">SMS
                    <input type=checkbox name="facility_locker" id="facility_locker" value=" Locker ">Locker
                    <input type=checkbox name="facility_debitcard" id="facility_debitcard" value=" Debit Card ">Debit Card
                    </div>
                    
                </div>
                <div class="submit">
                    <input type="submit" name="submit" value="create">
                </div>

            </div>
        </form>
        </div>
    </div>
   


</body>
</html>