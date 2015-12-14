<%@ page import="java.util.ResourceBundle, art.servlets.ArtDBCP" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%   response.setHeader("Cache-control","no-cache"); %>

<html>
<head>
 <meta http-equiv="expires" content="0">
 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache, must-revalidate">
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/art.css">
 
 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
 
 <title>ART</title>
</head>

 



<body>
<%

 ResourceBundle messages = ResourceBundle.getBundle("art.i18n.ArtMessages",request.getLocale());
	    
 /* If this page is called by an Admin session, let's
    close the dedicated connection used by the admin who is logging off 
  */
 if (session.getAttribute("SessionConn") != null) {
     java.sql.Connection conn = (java.sql.Connection) session.getAttribute("SessionConn");
     conn.close();     
 }

 /* Invalidate the session */
 session.invalidate();
 
 //display mobile login page if logging off from mobile version
 if(request.getParameter("_mobile")!=null){
	response.sendRedirect(request.getContextPath()+"/mobile/index.jsp");
	return;
}

%>

<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
      <div class="navbar-header">
          <div id="navbar" class="navbar-collapse collapse">
           <a class="navbar-brand" href="<%=request.getContextPath()%>"><%=messages.getString("login")%></a>				
               
        </div><!--/.nav-collapse -->
    </div>
	</div>
</nav>



<div class="container-fluid">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="jumbotron">
				<h2>
					<%=messages.getString("sessionClosed")%>
				</h2>
				<p>
					<%=messages.getString("thanksForUsing")%>
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="<%=request.getContextPath()%>"><%=messages.getString("login")%></a>
				</p>
			</div>
		</div>
	</div>
</div>

<%@ include file ="/user/footer.jsp" %>



