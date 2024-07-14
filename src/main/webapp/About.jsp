<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS Files -->
<link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/abouts/about-5/assets/css/about-5.css" />
<%@include file="allcomponents/allcss.jsp"%>

 
<title>About</title>
</head>
<body>

<%@include file="allcomponents/navbar.jsp"%>

<!-- About 5 - Bootstrap Brain Component -->

<section class="py-3 py-md-5 py-xl-8 bg-secondary ">
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-10 col-lg-8">
        <h3 class="fs-5 mb-2 .text-primary text-uppercase ">About</h3>
        <h2 class="display-5 mb-4">Develop a user-centric personal eNotes management platform with intuitive organization, robust security.</h2>
        <button type="button" class="btn btn-lg btn-primary mb-3 mb-md-4 mb-xl-5">Discover More</button>
      </div>
    </div>
  </div>

  <div class="container overflow-hidden">
    <div class="row gy-4 gy-lg-0">
      <div class="col-12 col-lg-6">
        <article>
          <div class="card border-0">
        <!--     <img class="card-img-top img-fluid m-0"   src="Images/a.jpg" height="690" width="460" alt=""> -->
            <div class="card-body border bg-white p-4">
              <div class="entry-header mb-3">
                <h2 class="card-title entry-title h4 mb-0">
                  <a class="link-dark text-decoration-none" href="#!">Our Vision</a>
                </h2>
              </div>
              <p class="card-text entry-summary text-secondary mb-3">  Our aim is to empower individuals to harness the full potential of their digital notes, enabling them to organize their thoughts and unlock insights that drive personal and professional growth</p>
            </div>
          </div>
        </article>
      </div>
      <div class="col-12 col-lg-6">
        <article>
          <div class="card border-0">
         <!--     <img class="card-img-top img-fluid m-0"  src="Images/a.jpg" alt=""> -->
            <div class="card-body border bg-white p-4">
              <div class="entry-header mb-3">
                <h2 class="card-title entry-title h4 mb-0">
                  <a class="link-dark text-decoration-none" href="#!">Our Approach</a>
                </h2>
              </div>
              <p class="card-text entry-summary text-secondary mb-3">You can effectively plan, develop, and launch a personal eNotes management project that meets the needs of users and delivers value over the long term.</p>
            </div>
          </div>
        </article>
      </div>
    </div>
  </div>
</section>
	<%@include file="allcomponents/footer.jsp"%>

</body>
</html>