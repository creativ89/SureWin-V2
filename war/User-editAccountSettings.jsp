	<%@page import="model.*, java.util.*"%>
<%
	
	String errorMsg = request.getParameter("errMsg");
	if(errorMsg == null){
		errorMsg = "";
	}

	user normalUser = (user)session.getAttribute("authenticated");
		
	userDataManager udm = new userDataManager();
	user modifiedUser = udm.retrieve(normalUser.getId());
	if (normalUser == null || modifiedUser ==null) {
			response.sendRedirect("mainPage.jsp");
			return;
	}	

%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- header includes standard bootstrap stylesheet and css -->
<%@include file="common/header.jsp"%>
</head>
<script>

	$(function() {
	    $( "#datepicker" ).datepicker({ dateFormat: "dd/mm/yyyy" });
	});
	
</script>
<body>
	<%@include file="common/navBarAfterLogin.jsp"%>

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">
		<br><br><br><br>
		<ol class="breadcrumb">
			<li><a href="User-MainPage.jsp">Home</a></li>
			<li><a href="User-Settings.jsp">Setting</a></li>
			<li class="active">Edit Setting</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">Edit Setting</h1>
				</header>
				
			    <form name="formname" action="processEditUserSetting.do" method="get">
			    <div class="form-group">
					<label class="col-sm-2 control-label">Name</label>
					<div class="col-sm-10">
						<input name="name" type="text" class="form-control" value = "<%=modifiedUser.getFullname()%>">
					</div>
				  </div>
				  
				  <div class="form-group">
					<label class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input name="password" type="password" class="form-control" value = "<%=modifiedUser.getPassword()%>">
					</div>
				  </div>

				  <div class="form-group">
					<label class="col-sm-2 control-label">Date of Birth</label>
					<div class="col-sm-10">
						<input name="dateOfBirth" type="text" id="datepicker" class="form-control" value = "<%=modifiedUser.getDateOfBirth()%>">
					</div>
				  </div>

				  <div class="form-group">
					<label class="col-sm-2 control-label">Contact No.</label>
					<div class="col-sm-10">
						<input name="hp" type="text" class="form-control" value = "<%=modifiedUser.getMobileNo()%>">
					</div>
				  </div>
				  
				  
				  <div class="form-group">
					<label class="col-sm-2 control-label">Bet Limit</label>
					<div class="col-sm-10">
						<input name="limit" type="text" class="form-control" value = "<%=modifiedUser.getBetLimit()%>">
					</div>
				  </div>
			    
			    <p></p>
			    <div class="row">
				    <div class="col-xs-5">
						<button type="button" class="btn btn-default"  onclick="window.location='/User-Settings.jsp';">Cancel</button>
					</div>
					<div class="col-xs-1"></div>
					<div class="col-xs-5">
						<button type="button" class="btn btn-primary" onclick="document.formname.submit()">Change</button>
					</div>
					<div class="col-xs-1"></div>
				</div>    
			 </form>	
				
		
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->
	
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>