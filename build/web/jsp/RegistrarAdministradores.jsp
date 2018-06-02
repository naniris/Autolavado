<%-- 
    Document   : registrarAdministradores
    Created on : 21/05/2018, 10:55:00 AM
    Author     : naniz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Administradores</title>
        <link rel="icon" href="../img/ferrari.png" type="img/x-icon">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link rel="stylesheet" href="../main.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <a href="/Autolavado/" class="nav-link">Inicio</a>
              </li>
              <li class="nav-item">
                <a href="../index.html" class="nav-link">Contacto</a>
              </li>
              <li class="nav-item">
                <a href="#info-seccion" class="nav-link">Servicios</a>
              </li>
              <li class="nav-item">
                  <a href="#" class="nav-link">Entrar</a>
                </li>
            </ul>
          </div>
        </div>
        </nav>

      <br>
      <br>
      <br>
      <div class="col-lg-5" style="margin-left: 30%">
            <div class="form-group">
                <h1 align="center">Registrate!</h1>
                <br>
                
                <form action="RegistrarAdministrador" method="post">
                    <label> Usuario: </label> 
                    <input type="text" name="nick_adm" maxlength="15" placeholder="Por ejemplo: Peter"  class="form-control" aria-label="Default" ><br>
                    <label> Nombre(s):</label> 
                    <input type="text" name="nombre_adm" maxlength="30" class="form-control" aria-label="Default"  ><br>
                    <label> Apellido Paterno:</label> 
                    <input type="text" name="apaterno_adm" maxlength="20" class="form-control" aria-label="Default"  ><br>
                    <label> Apellido Materno:</label> 
                    <input type="text" name="amaterno_adm" maxlength="20" class="form-control" aria-label="Default"  ><br> 
                    <label> Dirección:</label> 
                    <input type="text" name="direccion_adm" maxlength="50" class="form-control" aria-label="Default"  ><br>
                    <label> Teléfono: </label> 
                    <input type="tel" name="telefono_adm" maxlength="13" class="form-control" aria-label="Default"  ><br>
                    <label> Contraseña:</label> 
                    <input type="password" name="passwd_adm" maxlength="20" class="form-control" aria-label="Default"  > <br>
                    <br>
                    <input type="submit" value="Registrarme" class="btn btn-primary btn-block" readonly="false">
                </form>
                
            </div>
        </div>
           
      <hr style="color:white">  
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
