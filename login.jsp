<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="art.servlets.ArtDBCP" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file ="renewSession.jsp" %>

<html>
    <head>
        <title>DA Queries and Reports Login</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache, must-revalidate">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/art.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/art.js"></script>
		<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
    </head>
    <body onload="javascript:document.getElementById('username').focus();">
		
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-12">
				<center>
				 <img src="${pageContext.request.contextPath}/images/da_logo.jpg">
                    <h1><b>Data Extracts and Reporting</h1>
					</center>
				</div>
				
			</div>
			<div class="row">
				<div class="col-md-12">
				          <form name="login" method="post" action="<%= pageContext.getAttribute("nextPage") %>">
						
                <c:if test="${( !empty requestScope.message) && (pageScope._login != true)}">
                  <div class="alert alert-warning" role="alert">      ${requestScope.message}</div>  
				</c:if>
				
				<div class="form-group">
					<label for="exampleInputEmail1"><%=messages.getString("username")%></label>
					 <input id="username" class="form-control" size="25" name="username">
			    </div>
				<div class="form-group">
					<label for="exampleInputEmail2"><%=messages.getString("password")%></label>
					<input id="password" type="password" class="form-control" size="25" name="password">
				</div>
				<input type="submit" class="btn btn-primary" value="<%=messages.getString("login")%>">
            </form>
				</div>
			</div>
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>
		
		


 
  


<!--
        <%@ include file ="user/footer.jsp" %>
-->
