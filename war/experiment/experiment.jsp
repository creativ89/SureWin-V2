<%@page import="model.*, java.util.*"%>
<%
String layout="";
int number = new Random().nextInt(100);
testerQuantityDataManager tqdm = new testerQuantityDataManager();
if(number < 50){
	layout ="1";
}else{
	layout ="2";
}


%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>SureWin</title>

<link rel="shortcut icon" href="../assets/images/gt_favicon.png">

<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/font-awesome.min.css">

<!-- Custom styles for our template -->
<link rel="stylesheet" href="../assets/css/bootstrap-theme.css" media="screen">
<link rel="stylesheet" href="../assets/css/main.css">

<style type="text/css">
#over {
    background-image: url("/image/iphone-830-420.jpg");
    background-repeat: no-repeat;
    height: 850px;
    width: 500px;
    margin: 0 auto 30px;
    position: relative;
  
}

iframe {
    
    position: absolute;
    top: 110px;
    left: 53px;
}
</style>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img
					src="../assets/images/logo2.png" alt="Progressus HTML5 template"></a>
			</div>
			
		</div>
	</div>
	<!-- /.navbar -->
	<br><br><br><br>
	<div class="container">	
		<div class="jumbotron">	
			<h1>Task</h1>			
			<div class="row">
				<h4>
					Please enter the URL below on your <b>mobile phone Internet Explorer</b>
					<br><br>
					
					<%if(layout.equals("1")){ %>
						http://tinyurl.com/g3t5-surewin1
					<%}else{ %>
						http://tinyurl.com/g3t5-surewin2
					<%} %>
					
					<br><br>
					1. Please Log in using the following details
					<br>
					Username: rosanne
					<br>
					Password: 123
					<br><br>
					Task: you want to place a 4D bet on the upcoming 4D draw.
					<br><br>
					Draw Date : <b>22/03/2014</b>
					<br>
					Type of 4D bet: <b>Ordinary</b>
					<br>
					4D Numbers:
					<br>
					&nbsp; &nbsp; 1. <b>1991</b><br>
					&nbsp; &nbsp; 2. <b>4459</b><br>
					&nbsp; &nbsp; 3. <b>5738</b><br>
					Big  : <b>$3</b><br>
					Small: <b>$3</b><br>
					<br>
					Please place a 4D bet successfully.
				</h4>
				
				<button type="button" class="btn btn-default" onclick="window.location='/experiment/completion.jsp';">Next</button>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->

	
	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>