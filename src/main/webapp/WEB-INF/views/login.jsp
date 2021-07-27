
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	
	<style type= "text/css">
		

			
			*{
			margin: 0px;
			padding: 0px;
		}
		 body
   		{
     		margin:0px; background-color:#27a465; color:#f7f7f7; font-family:Arial, Helvetica, sans-serif;
   		}
		
		.main{
			height: 320px;
			width: 30%;
			text-align:center;
			background-color: #27a465;
			margin: 370px;
			margin-top:100px;
			margin-right: 150px; 
			border-radius: 20px;
			border: 2px solid rgba(0, 0, 0,0.8);
			opacity:5s;	
			}
			
		.head{
			text-align: center;
			font-size: 21px;
			text-transform: capitalize;
			height: 50px;
			line-height: 70px;
			color: black;
			
			border-radius: 20px;
			
		}
		.data{
			height: 30px;
			line-height: 30px;
			width: 100%;
			margin:auto ;
			margin-top:10px;
			line-height: 60px;		
			padding-right: 120px
			box
			}
		.data input{
			height: 30px;
			width: 250px;
			border-radius: 5px;
			}
			.btn{
			height: 60px;
			line-height: 60px;
			width: 100px;
			margin:auto;
			margin-left:85px;
			text-align: center;
			
		}
		
		.err{
			height: 20px;
			padding-top:15px;
			margin:auto;
			
			}
		.btn input{

			font-size:18px;
			text-transform: uppercase;
			background-color:  #ff4747;
			width: 200px;
			border-radius: 5px;
			height: 30px;
			font-family: Open Sans;
		}
		.btn input:hover{
			background-color:  rgb(242, 242, 242);

		}
	</style>

	<script type="text/javascript">
		function validate() {
		a=true
		unm = document.getElementById('unm').value
		if(unm==""){
		document.getElementById('unmerr').innerHTML="username should not be empty"
		 a=false
		}
	
	
		upass= document.getElementById('upass').value
		if(upass==""){
		document.getElementById('upasserr').innerHTML="password should not be empty"
		 a=false
		}

		if(upass.length < 6 )
		{
		document.getElementById('upasserr').innerHTML="Password min  length should be 6"
		 a=false
			
		}
		return a
		}
		function clr(obj){
		obj.innerHTML=""
		}
	</script>	
</head>
<body>
	<form action="${pageContext.request.contextPath}/home.jsp" ModelAttribute=${"login"} method="POST" >
		<div class="main">
		
			<div class="head">
			<h >Sign-In</h>
			</div>
			
			
			<div class="data">
				<input type="text" placeholder="User_Id" id="unm" onkeyup="clr(unmerr)">
			</div>
			<div width="30%" id="unmerr" class="err"></div>

			<div class="data">
				<input type="password" placeholder="Password" name="" id="upass" onkeyup="clr(upasserr)">
			<div width="30%" id="upasserr"class"err"></div>

			</div>	
			<div>
				<a class="data" tabindex="3" href="https://www.amazon.in/ap/forgotpassword?showRememberMe=true&amp;openid.pape.max_auth_age=0&amp;openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&amp;pageId=inflex&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fgp%2Fcart%2Fview.html%3Fref_%3Dnav_ya_signin&amp;prevRID=RCAR08N28JCTDZHP07YD&amp;openid.assoc_handle=inflex&amp;openid.mode=checkid_setup&amp;prepopulatedLoginId=eyJjaXBoZXIiOiIvQzFDT21iNit3ZzN3dzJKL1B3Z3FnPT0iLCJ2ZXJzaW9uIjoxLCJJViI6IlhjRm1RK3pDWXMzVlc3c1VOTzcrTHc9PSJ9&amp;failedSignInCount=0&amp;openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;timestamp=1624687315000">
  				Forgot Password</a>
			</div>	
			<div class="btn">
				<input type="submit" value="Sign-In" onclick="return validate()" >
			</div>	
			
	
		</div>
	</form>
</body>
</html>