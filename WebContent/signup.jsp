<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp Page</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" 
    crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style1.css">
     <script src="js/bootstrap.js"></script>
</head>
<script>
    function valid(){
        var a=document.getElementById("pass").value;
        var b=document.getElementById("pass1").value;
        var first=document.getElementById("first").value;
        var last=document.getElementById("last").value;
        var user=document.getElementById("user").value;
        var email=document.getElementById("email").value;
        var number=document.getElementById("phone").value;
        
        if(a.length==0 || email.length==0 || first.length==0 || last.length==0 || number.length==0|| user.length==0) {
	    	window.alert("Enter all the details to Register ):")
        }
	    else if(a.length==0)
        {
            window.alert("Password cannot be empty !")
        }
        else if(a.length<8){
            window.alert("Your password must have atleast 8 characters !")
        }
        else if(a!=b){
        window.alert("Wrong password Re-enter it! ")
        }
        else if((number.length)!=10)
        	{
        	window.alert("Phone number must have 10 numbers!")
        	}

    }
    </script>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-9 col-sm-6 col-xs-2">
        <div class="box">
            <form action="SignupValid" method="post">
            <fieldset class="the-fieldset">
                <legend class="the-legend">Sign UP <i class="fas fa-angle-double-right"></i> </legend>
                <div class="col-lg-12 col-md-11 col-sm-10 col-xs-8">
                <table cellpadding="5px" cellspacing="5px">
                    <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
                    <tr>
        <td><label for="first">Firstname :</label></td>
            <td><input type="text" name="firstname" id="first" placeholder="Enter the first name" required="required"></td>
        </tr>
        </div>
        <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
        <tr>
        <td><label for="last">Lastname :</label></td>
        
    <td> <input type="text" name="secondname" id="last" placeholder="Enter your last name" required="required"></td>
    </tr>
    </div>
    <tr>
<td>   <label for="address">Username :</label></td>
    <td><input type="text" name="username" id="user" placeholder="Enter your Username" required="required" ></td>
    </tr>
    </div>
    <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
<tr>       
    <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
    <tr>
        <td><label for="user">Email  :</label></td>
    <td><input type="email" name="email" id="email" placeholder="Enter your email id " required="required"></td>
    </tr>
    </div>
    <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
    <tr>
        <td><label for="pass">Password :</label></td>
    <td><input type="password" name="pass" id="pass" placeholder="Enter your password" required="required"></td>
    </tr>
    </div>
    <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
    <tr> 
    <td><label for="pass1">Confirm Password :</label></td>
<td><input type="password" name="password" id="pass1" placeholder="Confirm your password" required="required"></td>
    </tr>
    </div>
    <div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
    
        <td><label for="phone">Contact no :</label></td>
    <td><input type="text" name="phone" id="phone" placeholder="Enter your phone number" required="required"></td>
        </tr>
        </div>
        </table>
        </div>
        <div class="col-lg-12 col-md-11 col-sm-5 col-xs-12">
         <button type="submit" id="submit" onclick="valid()">Register&nbsp;&nbsp;<i class="fas fa-paper-plane"></i></button>
         </div>
         <div class="col-lg-12 col-md-11 col-sm-9 col-xs-12">
         <button type="reset" id="reset">Reset&nbsp;&nbsp;<i class="fas fa-times-circle"></i></button>
         </div>
        </fieldset>
        </form>
    </div>
</div>
</div>
</div>
</body>

</html>