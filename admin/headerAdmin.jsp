<%@ page contentType="text/html; charset=UTF-8" %>
<%  request.setCharacterEncoding("UTF-8"); %>

<%	
 java.util.ResourceBundle messages = java.util.ResourceBundle.getBundle("art.i18n.ArtMessages",request.getLocale());
  art.utils.UserEntity ueHeader = (art.utils.UserEntity) session.getAttribute("ue");
 int accessLevelHeader=0;
 if(ueHeader!=null){
	accessLevelHeader=ueHeader.getAccessLevel(); 
 }
%>

<html>
    <head>
        <meta http-equiv="expires" content="0">
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <title>ART</title>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/prototype.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/scriptaculous/scriptaculous.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/ajaxtags.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/art.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.form.js"></script>
	<script> var $jQuery = jQuery.noConflict();</script>

        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/art.css">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/ajaxtags-art.css" />
        
        <!-- Start bootstrap -->
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
        
        <!-- End bootstrap -->
        
    </head>
    <body>
        <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button aria-expanded="false" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            <a class="navbar-brand" href="<%= request.getContextPath() %>/admin/adminConsole.jsp" >Admin</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div style="height: 1px;" aria-expanded="false" class="navbar-collapse collapse" id="bs-example-navbar-collapse-1">
             
                <ul class="nav navbar-nav">
                <% if (session.getAttribute("username") != null) {%>
                    <li>
		      <a href="<%= request.getContextPath() %>/user/showGroups.jsp">Run report</a> 
		    </li>
		    <li>
		      <a href="<%= request.getContextPath() %>/user/myJobs.jsp" >My jobs</a>
		    </li>
		    <li>
		      <a href="<%= request.getContextPath() %>/user/sharedJobs.jsp">Shared jobs</a>
		    </li>
		    <li>
		      <a href="<%= request.getContextPath() %>/user/jobArchives.jsp">Job archives</a>
		    </li>
		<% if (accessLevelHeader == 100) {%>
		    <li>
		      <a href="<%= request.getContextPath() %>/logs" >Logs</a>
		    </li>
		<% }
		}%>
                </ul>
            <ul class="nav navbar-nav navbar-right">
	      <li>
		  <a href="<%= request.getContextPath() %>/logOff.jsp">Log off</a>
	      </li>
	      <li>
		<p class="navbar-text">
	            <% if (ueHeader != null) { %>
                    <%= ueHeader.getUsername()%>
                    :: Logged in at <%=java.text.DateFormat.getTimeInstance(java.text.DateFormat.SHORT,request.getLocale()).format(ueHeader.getLoginDate())%>
                    <% } %>
                 </p>
	      </li>
	    </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
                     <span id="systemWorking" style="display: none">
                        <img src="<%= request.getContextPath() %>/images/spinner.gif">
                    </span>
    


