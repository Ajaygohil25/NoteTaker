<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="All_css_js.jsp" %>
        <title>Home page</title>
        <style type="text/css">
        .img1
        {
           height:480px;
           width: 915px;
        }
        body
        {
          background-color: #eceff1 ;
        }
        </style>
  </head>
  <body>
    <%@include file="Header.jsp" %>
    <div class="mt-0" align="center">
     <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/note4.jpeg" class="img1" alt="note1">
      <div class="carousel-caption d-none d-md-block">
        <h5>Note Taker</h5>
      </div>
    </div>
    <div class="carousel-item">
         <img src="images/note3.jpg" class="img1" alt="note3">
      <div class="carousel-caption d-none d-md-block">
        <h5 style="color: black;">Add Your To do List</h5>
        
      </div>
    </div>
    <div class="carousel-item">
         <img src="images/note2.png"  class="img1 " alt="note4">
      <div class="carousel-caption d-none d-md-block">
        <h5 style="color: black;">Easy to Edit</h5>

      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
  </body>
  
  <%@ include file="Footer.jsp"%>
</html>