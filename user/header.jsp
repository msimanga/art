<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  request.setCharacterEncoding("UTF-8"); %>

<%	
//note that variables will be defined in files that include this one, so duplicate variable names may result
 java.util.ResourceBundle messages = java.util.ResourceBundle.getBundle("art.i18n.ArtMessages",request.getLocale());
 
 art.utils.UserEntity ueHeader = (art.utils.UserEntity) session.getAttribute("ue");
 int accessLevelHeader=ueHeader.getAccessLevel();
 String usernameHeader=ueHeader.getUsername();
%>


<% if (request.getParameter("_isFragment")==null) { %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
  <title>ART</title>
      
<c:if test="${empty param._mobile}">  
 <script type="text/javascript" src="<%= request.getContextPath() %>/js/prototype.js"></script>
 <script type="text/javascript" src="<%= request.getContextPath() %>/js/scriptaculous/scriptaculous.js"></script>
 
  <script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.js"></script>
  <script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.form.js"></script>
 
 <script type="text/javascript">
	jQuery.noConflict();
</script>
  
 <script type="text/javascript" src="<%= request.getContextPath() %>/js/ajaxtags.js"></script>
 <link rel="stylesheet" href="<%= request.getContextPath() %>/js/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css" media="screen" />
 
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jpivot/table/mdxtable.css" />
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/jpivot/navi/mdxnavi.css" />
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/wcf/form/xform.css" />
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/wcf/table/xtable.css" />
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/wcf/tree/xtree.css" />
  <script type="text/javascript" src="<%=request.getContextPath()%>/wcf/scroller.js"></script>
  
  <script type="text/javascript" src="<%= request.getContextPath() %>/js/sorttable.js"></script>
</c:if> 
  
  <script type="text/javascript" src="<%= request.getContextPath() %>/js/art.js"></script>  
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() + art.servlets.ArtDBCP.getArtSetting("css_skin")%>" />      
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/ajaxtags-art.css" /> 
  
  <script type="text/javascript" src="<%= request.getContextPath() %>/js/overlib.js"></script>
  
      
   <!-- Start bootstrap -->
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
        
  <!-- End bootstrap -->
  
  
  
</head>
<body>
 <c:if test="${empty param._mobile}">  
 <% if ( !("public_user".equals(usernameHeader) && "no".equals(art.servlets.ArtDBCP.getArtSetting("header_with_public_user")))) { %>
   
   
   <nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
         <ul class="nav navbar-nav">
           
           <% if (accessLevelHeader >= 10) {%>
               <li>
		<a href="<%= request.getContextPath() %>/admin/adminConsole.jsp">Admin</a> 
		 </li>
	    <% } %>
	    
	         <li>
		<a href="<%= request.getContextPath() %>/user/showGroups.jsp">Run Reports</a> 
		 </li>
		 
	    <% if (accessLevelHeader >= 5) {%>
	    
	        <li>
		<a href="<%= request.getContextPath() %>/user/myJobs.jsp">My Jobs</a> 
		 </li>

	      <% } %>
	      
	     <li>
		<a href="<%= request.getContextPath() %>/user/sharedJobs.jsp">Shared Jobs</a> 
	      </li>
	      
	       <li>
		<a href="<%= request.getContextPath() %>/user/jobArchives.jsp">Job Archives</a> 
	      </li>
	      
	      
	      <% if (accessLevelHeader >= 30) {%>
	       <li>
		<a href="<%= request.getContextPath() %>/logs">Logs</a> 
	      </li>
	    <% } %>
   
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
        <!-- /.container -->
    </nav>
    


	  



   
   
 <% } %>
  <div id="systemWorking" style="display: none;">
    <img src="<%= request.getContextPath() %>/images/spinner.gif" alt="Executing..." />
  </div>

 <hr style="width:100%;height:1px">
 
 </c:if>
 <c:if test="${!empty param._mobile}">  
   <img src="<%= request.getContextPath() %>/images/art-24px.jpg" alt="" />
 </c:if>

<% } %>

