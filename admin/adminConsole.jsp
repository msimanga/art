<%@ page import="art.utils.*,java.io.*,java.util.*,art.servlets.ArtDBCP" %>

<%@ include file ="headerAdmin.jsp" %>

    <!-- Page Content -->
    <div class="container">
    
     


<h1>Admin Console</h1>

<div class="list-group"> 
  <%
          int accessLevel = ((Integer) session.getAttribute("AdminLevel") ).intValue();
	  if (accessLevel == 100) {
		  //super admin
   %>

  <a href="<%= request.getContextPath() %>/admin/editSettings.jsp" class="list-group-item"> 
    <h4 
      class="list-group-item-heading">Settings
    </h4> 
    Define ART settings<br />
  <small> ART Repository, SMTP settings etc </small>
    </p> 
  </a> 


   <%
	  }

	  if (!ArtDBCP.isArtSettingsLoaded()) {
   %>
	      	You need to define <i>ART Settings</i> - database connection
	        parameters and other settings - before being able to use ART.</small>
   <%

	  } else {
		    /*
		     *   Manage Datasources
		     */
		if (accessLevel >=80) {
			//senior admin and above
   %>
		    
		    

	  <a href="<%= request.getContextPath() %>/admin/manageDatasources.jsp" class="list-group-item"> 
	    <h4 class="list-group-item-heading">
	      Datasources
	    </h4> 
	    <p class="list-group-item-text">
	    Define Datasource connection parameters<br />
	    <small> define datasources and refresh or review connections status </small>
	    </p> 
	</a> 

   <%
		}

		    /*
		     *   Manage Query Groups
		     */
		if (accessLevel >=80) {
			//senior admin and above
   %>
   

	    <a href="<%= request.getContextPath() %>/admin/manageQueryGroups.jsp" class="list-group-item"> 
	      <h4 class="list-group-item-heading">
		Query Groups
	      </h4> 
	      <p class="list-group-item-text">
		Define Groups to which queries belong
	      </p> 
	    </a> 

   
   <%
		}
		    /*
		     *   Manage Queries
		     */
		if (accessLevel >=10) {
			//junior admin and above
   %>

	  <a href="<%= request.getContextPath() %>/admin/manageQueries.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Queries
		</h4> 
		<p class="list-group-item-text">
		<span style="color:red">Manage Queries</span> <br />
			  <small> create, update, delete, copy queries 
			   </small>
		</p> 
	  </a> 


   <%
		}
		    /*
		     *   Manage User Groups
		     */
		if (accessLevel >=40) {
			//standard admin and above
   %>

	<a href="<%= request.getContextPath() %>/admin/manageUserGroups.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		User Groups
		</h4> 
		<p class="list-group-item-text">
		Define Groups to which users belong
		</p> 
	</a> 

   

   <%
		}
		    /*
		     *   Manage Users
		     */
		if (accessLevel >=40) {
			//standard admin and above
   %>
   

	<a href="<%= request.getContextPath() %>/admin/manageUsers.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Users
		</h4> 
		<p class="list-group-item-text">
		Define Users
		</p> 
	</a> 

   
			<%
		}
		    /*
		     *   Manage User-User Group Membership
		     */
		if (accessLevel >=30) {
			//mid admin and above
   %>
   

	<a href="<%= request.getContextPath() %>/admin/manageUserGroupAssignment.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		User Group Membership
		</h4> 
		<p class="list-group-item-text">
		Assign users to user groups<br />
				<small> users can belong to zero, one, or many user groups </small>
		</p> 
	</a> 

	
   <%
		}
		    /*
		     *   Manage User/User Group Privileges
		     */
		if (accessLevel >= 30) {
			//mid admin and above
   %>
   

	<a href="<%= request.getContextPath() %>/admin/manageUserPrivileges.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		User/User Group Privileges &nbsp;&nbsp;
		</h4> 
		<p class="list-group-item-text">
		Grant/Revoke to users/user groups the right to access queries/query groups
		</p> 
	</a> 


   <%
		}
		    /*
		     *   Manage Admin Privileges
		     */
		if (accessLevel >=40) {
			//standard admin and above
   %>
   

	<a href="<%= request.getContextPath() %>/admin/manageAdminPrivileges.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Admin Privileges
		</h4> 
		<p class="list-group-item-text">
		Grant/Revoke to junior/mid Admins the right to act on query groups and datasources </td></tr>
		</p> 
	</a> 

   

   <%
		}
		    /*
		     *   Manage Rules
		     */
		if (accessLevel >=80) {
			//senior admin and above
   %>
   

	<a href="<%= request.getContextPath() %>/admin/manageRuleDefinitions.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Rules
		</h4> 
		<p class="list-group-item-text">
		Define Rule names
		</p> 
	</a> 

  <%
		}
		    /*
		     *   Manage Rule values for given users
		     */
		if (accessLevel >=40) {
			//standard admin and above
   %>
   

	<a href="<%= request.getContextPath() %>/admin/manageUserRules.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Rule Values
		</h4> 
		<p class="list-group-item-text">
		Set rule values for users/user groups
		</p> 
	</a> 


   <%
		}
		/*
		     *   Manage Shared Jobs
		     */
		if (accessLevel >=80) {
			//senior admin and above
   %>

	<a href="<%= request.getContextPath() %>/admin/manageSharedJobs.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Shared Jobs
		</h4> 
		<p class="list-group-item-text">
		Grant/Revoke access to shared jobs
		</p> 
	</a> 


   <%
		}

		/*
		     *   Manage Job Schedules
		     */
		if (accessLevel >=80) {
			//senior admin and above
   %>
	<a href="<%= request.getContextPath() %>/admin/manageJobSchedules.jsp" class="list-group-item"> 
		<h4 class="list-group-item-heading">
		Schedules
		</h4> 
		<p class="list-group-item-text">
		Define schedules that can be used when creating jobs
		</p> 
	</a> 


   <%
		}
           }
   %>
   <!-- group-item -->
	</div>
	   
	   
	         </div>
    <!-- /.container -->

<%@ include file ="/user/footer.jsp" %>
