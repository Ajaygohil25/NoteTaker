<%@page import="java.sql.Date"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.model.NoteModel"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.connection.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View all notes</title>
<%@include file="All_css_js.jsp"%>
<style type="text/css">
       
        body
        {
          background-color: #eceff1 ;
        }
        </style>
</head>
<body>
<%@include file="Header.jsp"%>
<%
   Session s= FactoryProvider.getFactory().openSession();
   Transaction tx = s.beginTransaction();
    Query q=  s.createQuery("from NoteModel order by date desc");
    List<NoteModel> list=q.list();
    
    for(NoteModel note: list)
    {
   %> 

<div class ="container">
<div class="card mt-4">

   <div class="card-header" style="background-color: #ffffff">
   <h5 class="card-title" >Title of Note: <%=note.gettitle() %></h5>
  </div>
  
  <div class="card-body" >
   <div align="center"> <img src="images/vnote.png" style="max-width: 70px" class="card-img-top mt-2 ms-4" alt="logo"></div>
    <h6 >Date : <%=note.getDate() %></h6>
    <p class="card-text"><%= note.getNote() %> </p>
    <div align="center" class="mt-2">
    <a href="DeleteNoteServlet?noteid=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="UpdateNote.jsp?noteid=<%=note.getId() %>" class="ms-4 btn btn-primary">Edit</a>
    </div>
  </div>
</div>
</div>
<% 
    }
   tx.commit();
   s.close();
    
%>
</body>
 <%@ include file="Footer.jsp"%>
</html>