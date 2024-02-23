<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="All_css_js.jsp"%>
<title>Add notes page</title>
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

	<form  action="SaveNoteServlet" method="post">
	<div class="container" id="example2" style="margin: 20px;" >
		
		<div class="input-group mx-auto mt-4">
			<label for="exampleFormControlInput1" class="form-label me-5">Add Tittle Here :</label> 
				<input name="title" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Tittle of Note" required="required">
				</div>
		
		<div class="mb-3">
		<div class="input-group  mx-auto  mt-4">
		<label for="exampleFormControlTextarea1" class="form-label me-5">Add Your Notes Here :</label>
			<textarea name="notetext" style="height: 200px;" class="form-control" id="exampleFormControlTextarea1" rows="4" required="required"></textarea>
		</div>
		</div>
		<button type="submit" style="margin-left:500px;" class="btn">Submit Note</button>
		</div>
	</form>

</body>
 <%@ include file="Footer.jsp"%>
</html>