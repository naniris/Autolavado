<%-- 
    Document   : index
    Created on : 22/05/2018, 12:35:07 AM
    Author     : naniz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Autolavado Orozco</title>
        <link rel="icon" href="./img/ferrari.png" type="img/x-icon">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
        <script src="./js/smooth-scroll.min"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link rel="stylesheet" href="main.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <script src="js/smooth-scroll.min.js"></script>
        <script>
          smoothScroll.init({
          selector: '[data-scroll]', // Selector for links (must be a class, ID, data attribute, or element tag)
          selectorHeader: null, // Selector for fixed headers (must be a valid CSS selector) [optional]
          speed: 2000, // Integer. How fast to complete the scroll in milliseconds
          easing: 'easeInOutCubic', // Easing pattern to use
          offset: 0, // Integer. How far to offset the scrolling anchor location in pixels
          callback: function ( anchor, toggle ) {} // Function to run after scrolling
          });
        </script>

    </head>
    <body>

    
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
      <div class="container">
        <a style='color:white' class="navbar-brand">
            Autolavado Orozco
        </a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a data-scroll href="#inicio" class="nav-link">Inicio</a>
            </li>
            <li class="nav-item">
              <a data-scroll href="#contacto" class="nav-link">Contacto</a>
            </li>
            <li class="nav-item">
              <a data-scroll href="#servicios" class="nav-link">Servicios</a>
            </li>
            <li class="nav-item">
                <a data-scroll href="#entrar" class="nav-link">Entrar</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
   <br>
   <br>
   <br>
    <header id="home-section">
      <div class="dark-overlay">
        <div class="home-inner">
          <div class="container">
            <div class="row">
              <div class="col-lg-8 d-none d-sm-block">
                <h1 class="display-4" style="text-align: center"><strong>Precios</strong></h1>
                <table class="table table-striped">
                    <thead class="thead-light">
                      <tr class="textoCentrado">
                        <th scope="col">#</th>
                        <th scope="col">Motos</th>
                        <th scope="col">Taxis</th>
                        <th scope="col">Carros chicos</th>
                        <th scope="col">Camionetas</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="textoCentrado">
                        <th scope="row">1</th>
                        <td>$20</td>
                        <td>$25</td>
                        <td>$40</td>
                        <td>$60</td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="table table-striped">
                      <thead class="thead-light">
                        <tr class="textoCentrado">
                          <th scope="col">#</th>
                          <th scope="col">Fritos</th>
                          <th scope="col">Cheetos</th>
                          <th scope="col">Doritos</th>
                          <th scope="col">Sabritas</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="textoCentrado">
                          <th scope="row">2</th>
                          <td>$7</td>
                          <td>$7</td>
                          <td>$10</td>
                          <td>$9</td>
                        </tr>
                      </tbody>
                    </table>
                    <table class="table table-striped">
                        <thead class="thead-light">
                          <tr class="textoCentrado">
                            <th scope="col">#</th>
                            <th scope="col">Aguas</th>
                            <th scope="col">Refrescos</th>
                            <th scope="col">Cervezas</th>
                            <th scope="col">Caguamas</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr class="textoCentrado">
                            <th scope="row">3</th>
                            <td>$8</td>
                            <td>$10</td>
                            <td>$15</td>
                            <td>$30</td>
                          </tr>
                        </tbody>
                      </table>
              </div>
              <!-- SECOND COLUMN -->
              <div class="col-lg-4" id="entrar">
                <br>
                <br>
                <br>
                <div class="card text-center" style="background-color: slategrey">
                  <div class="card-body">
                    <h3>Entrar</h3>
                    <form action="Trabajador1" method="post">
                      <div class="form-group">
                          <input type="text" class="form-control form-control-lg" name="nick_adm" maxlength="15" placeholder="Usuario">
                      </div>
                      <div class="form-group">
                          <input type="password" class="form-control form-control-lg" name="passwd_adm" maxlength="20" placeholder="Contraseña">
                        <br>  
                        <a href="./jsp/RegistrarAdministradores.jsp" style="color:black"><strong>Crear cuenta!</strong></a>
                      </div>
                      <input type="submit" value="Entrar" class="btn btn-outline-light btn-block"> 
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
  
    <div class="container">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <br>
              <img class="d-block img-fluid" src="./img/1.png" alt="First slide">
            </div>
            <div class="carousel-item">
              <br>
              <img class="d-block img-fluid" src="./img/taxi2.png"  alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="./img/taxi_PNG44.png" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
          </div>
    </div>
    <section class="info-section bg-light text-muted py-5" id="servicios">
      <div class="container">
        <div class="row">
          <div class="col-md-1">
            <img class="lavado" src="./img/021.png" height="500px" width="400px" alt="Lavado">
          </div>
          <div class="col-md-3">
              
          </div>
          <div class="col-md-3">
              
          </div>      
          <div class="col-md-3">
            <h3>SERVICIOS</h3>
            <p>Somos unos de los mejores Autolavados de Huetamo!</p><p>Ya que contamos con los mejores servicios:</p>
           
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fas fa-certificate"></i>
              </div>
              <div class="p-4 align-self-end">
              Lavado de Carroceria
              </div>
            </div>
            
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fas fa-certificate"></i>
              </div>
              <div class="p-4 align-self-end">
              Detallado.
              </div>
            </div>
           
            <div class="d-flex flex-row">
              <div class="p-4 align-self-start">
                <i class="fas fa-certificate"></i>
              </div>
              <div class="p-4 align-self-end">
                Aspirado.
              </div>
            </div>
            
             <div class="d-flex flex-row">
                <div class="p-4 align-self-start">
                  <i class="fas fa-certificate"></i>
                </div>
                <div class="p-4 align-self-end">
                Servicio a Domicilio
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>


  <div style="background-color:silver" id="contacto">
    <section class="info-head-section">
      <div class="container">
        <div class="row">
          <div class="col text-center">
            <div class="p-5">
                <h1 class="display-3" style="color:black">CONTACTO</h1>
              <br>
              <p class="lead" style="color:black">Horario de 8:00 a.m a 7 p.m</p>
              <p class="lead" style="font-size: 150%; color: black">Lunes a Domingo</p>
              <p class="lead" style="color:black"><strong>Calle Jamaicas #10 Col. El toreo</strong></p>  
              <p style="font-size: 180%; color:black"><i class="fab fa-whatsapp-square"> 4351034326</i></p>
              <p style="font-size: 180%; color:black"><i class="fab fa-facebook-square">  Autolavado Orozco</i></p>             
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
    

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12 p-5">
           
            <p class="text-center">&copy;Autolavado Orozco  2018.</p>
            <p class="text-center">Politica de privacidad.</p> 
          </div>
        </div>
      </div>
    </footer>
  </body>
</html>
