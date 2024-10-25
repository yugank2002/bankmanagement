<html>
<head>
     <style>
          .main{
        width:100%;
        height:100vh;
        background-color: antiquewhite;
        
    }
    .page{
        width:100%;
        height:auto;
       

        p{
          font-size: 4vw;
            font-weight: 800;
            margin:2vw 3vw;
            color:rgb(66, 66, 66);
            font-family: "Montserrat", sans-serif ;
        }
    }

.first{
     display:flex;
     align-items: center;
     justify-content: space-evenly;
     width:100%;
     height:6vw;
     
     margin-top: 3vw;
}

.second{
     display:flex;
     align-items: center;
     justify-content: space-evenly;
     width:100%;
     height:6vw;
     margin-top: 3vw;
}

input[type=submit]{
     text-decoration: none;
     background: linear-gradient(to bottom right , #01b88a,#02cc3e);
     border-radius: 30px;
     border: none;
     color: white;
     padding: 16px 32px;
     
     box-shadow:-2px 2px 15px rgba(0,0,0,.5);
     margin: 4px 1px;
     cursor: pointer;
     font-size: 1.3vw;
     transition: all ease 0.5s;
}
input[type=submit]:hover{
          background:white;
          border-radius: 30px;
          border: none;
          border:1px solid #04AA6D;
          color: #04AA6D;
          cursor: pointer;
          font-size: 1.5vw;
        }

.sign{
     input[type=submit]{
          border:2px solid rgb(54, 54, 54)
           
     }
}

    .nav{
        width:100%;
        height:5vw;
        background: linear-gradient(to bottom right , #01b88a,#02be3a);

        h1{
            text-align: center;
            text-transform: uppercase;
            font-size: 4vw;
            font-weight: 600;
            color: white;
            font-family: Georgia, 'Times New Roman', Times, serif;
            
        }
    }

    @media screen and (max-width: 1000px){
     .content{
          display: flex;
     }
     .first{
     display:flex;
     flex-direction: column;
     width:50%;
     height:fit-content;
    
    }

.second{
     display:flex;
     flex-direction: column;
     width:50%;
     height:fit-content;
     
     
    }

    input[type=submit]{
     font-size: 3vw;
     margin:6vw;
    }
}

     </style>
</head>
<body>
     <div class="main">
          <div class="nav">
               <h1>bharat  bank</h1>
          </div>

          <div class="page">
               <form method=post action=menu>
                    <p><font face="Corbel Light" size="30">Welcome to the Bank Portal:</font></p>
                    
                     <div class="content">
                         <div class="first">
                              <div class="butt">
                                   <input type=submit value="Create Account" name="createaccount">
                              </div>
                              <div class="butt">
                                   <input type=submit value="Deposit Amount" name=depositamount>
                              </div>
                              <div class="butt">
                                   <input type=submit value="Withdraw Amount" name=withdrawamount>
                              </div>
                              <div class="butt">
                                   <input type=submit value="Mini Statement" name=ministatement>
                              </div>
                         </div>
                
                         <div class="second">
                              <div class="butt"><input type=submit value="Member List" name=memberlist></div>
                              <div class="butt"><input type=submit value="Delete Account" name=deleteaccount></div>
                              <div class="butt"><input type=submit value="Transfer Amount" name=transferamount></div>
                              <div class="sign"><input type=submit value="Sign UP" name=signup></div>
                         </div>
                     </div>
                     
                        
                 
               
                 
                     
                 </form>
          </div>
     </div>
    


</body>
</html>