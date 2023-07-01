<%@page import="com.model.NoteModel"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.connection.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="All_css_js.jsp"%>
<title>Update Notes</title>
<style type="text/css">
.input-group{

 width: 70% !important;
}
.btn
{
  color: black;
  background-color: #e0e0e0;
  border-radius: 10px;
  
}
.btn:hover
{
  color: white;
  background-color: #1c2a48;
  transition: 0.5s;
}
#example2 {
  margin-top: 20px;
  display:block;
  border: 1px solid;
  padding: 10px;
  box-shadow: 2px 9px #e8eaf6;
}

        body
        {
          background-color: #eceff1 ;
        }
        </style>

</head>
<body>
	<%@include file="Header.jsp"%>

	<form  action="UpdateNoteServlet" method="post">
	<div class="container" id="example2" style="margin: 20px;">
	<%
	   int id= Integer.parseInt(request.getParameter("noteid"));
	   Session s=FactoryProvider.getFactory().openSession();
	   Transaction tx= s.beginTransaction();
	   NoteModel note =s.get(NoteModel.class, id);
	   
	   %>
	  
		<div class="input-group mx-auto mt-4">
			<label for="exampleFormControlInput1" class="form-label me-5">Edit Title:</label> 
			<input name="title" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Tittle of Note" value="<%= note.gettitle()%>">
				</div>
		
		<div class="mb-3">
		<div class="input-group  mx-auto  mt-4">
		<label for="exampleFormControlTextarea1" class="form-label me-5">Edit Notes Here:</label>
			<textarea name="notetext" style="height: 200px;" class="form-control" id="exampleFormControlTextarea1" rows="4" required="required"><%=note.getNote() %></textarea>
		</div>
		</div>
		<input type="hidden" name="noteid" value="<%= note.getId()%>">
		<button type="submit" style="margin-left:500px;" class="btn">Save Note</button>
		</div>
		 <% 
       tx.commit();	   
	   s.close();
	%>
	</form>

</body>
 <%@ include file="Footer.jsp"%>
</html>