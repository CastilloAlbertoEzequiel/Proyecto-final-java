<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="styles.jsp"></jsp:include>
    <link rel="stylesheet" href="./assets/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/style.css">
    <!--<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cover/">-->


   <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="./assets/cover.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>
    <jsp:include page="scripts.jsp"></jsp:include>
    <div class="container">
        <div class="row text-center mt-5 p-3 text-white">
            <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">

                <main class="px-3 texto-container">
                    <h1>Proyecto final JAVA-BACK END 2023</h1>
                    <p class=" texto">En este proyecto final creamos una web-app donde utilizaremos lo aprendido durante el curso 
                        para unir tanto el front-end, el back-end y la base de datos. En la cual simularemos una app de comercio</p>
                    
                </main>
            </div>
        </div>
    </div>  
</body>
</html>