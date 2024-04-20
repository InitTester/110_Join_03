<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" >

	<head>
	  <meta charset="UTF-8">
	  <title>CodePen - Material Login Form</title>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
		<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
		<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
		
		<!-- jstl , c:url value를 이용해서 루트로부터 절대경로를 지정해준다.-->
		<link rel="stylesheet" href= "<c:url value='/resources/css/style.css'/>">	
	
	</head>

	<body>
	<!-- partial:index.partial.html -->
	<!-- Mixins-->
	<!-- Pen Title-->
	<div class="pen-title">
	  <h1>Material Login Form</h1><span>Pen <i class='fa fa-code'></i> by <a href='http://andytran.me'>Andy Tran</a></span>
	</div>
	<div class="rerun"><a href="">Rerun Pen</a></div>
	<div class="container">
	  <div class="card"></div>
	  <div class="card">
	    <h1 class="title">Login</h1>
	    
	    <form>
	      <div class="input-container">
	      <!-- 기존에 type,label에 대한 값을 정의 했다 -->
	        <input type="text" id="name" required="required"/>
	        <label for="name">Username</label>
	        <div class="bar"></div>
	      </div>
	      <div class="input-container">
	        <input type="password" id="passwd" required="required"/>
	        <label for="passwd">Password</label>
	        <div class="bar"></div>
	      </div>
	      <div class="button-container">
	        <button><span>Go</span></button>
	      </div>
	      <div class="footer"><a href="#">Forgot your password?</a></div>
	    </form>
	    
	  <div class="card alt">
	    <div class="toggle"></div>
	    <h1 class="title">Register
	      <div class="close"></div>
	    </h1>	    
	    <!-- 입력 값 이동을 위한 경로 -->
	    <form action="<c:url value='/join.do'/>" method="post">
	      <div class="input-container">
	        <!-- 기존에 type,label에 대한 값을 정의 했다 -->
	        <input type="text" id="username1" name="name" required="required"/>
	        <label for="username1">Username</label>
	        <div class="bar"></div>
	      </div>
	      <div class="input-container">
	        <input type="password" id="pwd" name = "passwd" required="required"/>
	        <label for="pwd">Password</label>
	        <div class="bar"></div>
	      </div>
	      <div class="input-container">
	        <input type="password" id="pwdconform" required="required"/>
	        <label for="pwdconform">Repeat Password</label>
	        <div class="bar"></div>
	      </div>
	      <div class="button-container">
	        <button><span>Next</span></button>
	      </div>
	    </form>
	  </div>
	</div>
	
	<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
	<!-- CodePen--><a id="codepen" href="https://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
	<!-- partial -->
	  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	  <script src="<c:url value='/resources/js/script.js'/>"></script>
	  <script>
		/*     
			window.onload : 웹 페이지가 완전 로드되었을때 구동, 페이지의 요소를 접근하거나 초기화 할때 많이 사용된다.
		    전송된 데이터를 msg, result 값으로 받아서 result(db 처리 성공,실패)에 값이 있는경우 해당 경우에 맞는 msg 값을 받아서
		    화면에 보여주고, 새로고침을 하게되면 계속 회원가입이 되기 때문에 리다이렉트로 페이지 이   
		*/    
		window.onload=function(){
			var msg = '${msg}';
			var result = '${result}';
			
			if(result != ''){
				alert(msg);
				window.location.href = "<c:url value='/loginPage.do'/>"
			}
		}
	</script>	
	</body>
</html>