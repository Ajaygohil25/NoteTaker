<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  #text
  {
  color: white;
  }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: black;">
  <div class="container-fluid">
    <a style="margin-left: 50px"  class="navbar-brand" href="index.jsp" id="text">
     <img alt="note icon" src="images/note.png">NoteTaker</a>
     <div align="right" class="me-5">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
    <div style="margin-left: 200px" align="center">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp" id="text">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Add_notes.jsp" id="text">Add notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="All_notes.jsp" id="text">View All Notes</a>
        </li>
      </ul>
      </div>
      </div>
    </div>
  </div>
</nav>

</body>
</html>