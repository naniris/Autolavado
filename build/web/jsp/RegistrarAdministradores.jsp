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
    <body   >
          
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
               <a href="../jsp/EliminarAdministrador.jsp" class="nav-link">Eliminar</a>
              </li>
            </ul>
          </div>
        </div>
        </nav>

      <br>
      <br>
      <br>
        <div class="col-lg-5"  style="margin-left: 30%">
            <div class="form-group">
                <h1 align="center">Registrate!</h1>
                <br>
                
                 <form action="RegistrarAdministrador" method="post">
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Usuario:</span>
                    </div>
                        <input type="text" name="nick_adm" maxlength="30" class="form-control" placeholder="Usuario" aria-label="Username" aria-describedby="basic-addon1">
                    </div>

                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Nombre(s):</span>
                    </div>
                        <input type="text" name="nombre_adm" maxlength="30" class="form-control" placeholder="Nombre(s)" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Apellido Paterno:</span>
                    </div>
                        <input type="text" name="apaterno_adm" maxlength="20" class="form-control" placeholder="Apellido Paterno" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Apellido Materno:</span>
                    </div>
                        <input type="text" name="amaterno_adm" maxlength="20" class="form-control" placeholder="Apellido Materno" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Direccion:</span>
                    </div>
                        <input type="text" name="direccion_adm" maxlength="30" class="form-control" placeholder="Direccion" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
 
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Telefono:</span>
                    </div>
                        <input type="text" name="telefono_adm" maxlength="13" class="form-control" placeholder="Telefono" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Contraseña:</span>
                    </div>
                        <input type="text" name="passwd_adm" maxlength="30" class="form-control" placeholder="contraseña" aria-label="Username" aria-describedby="basic-addon1">
                    </div>

                    <input type="submit" value="Registrar" class="btn btn-success btn-block" readonly="false">
                </form>  
                <br>    
                <br>
                
                <table class="table table-bordered table-dark table-hover" method="get"  style="margin-left: -15%">
                <thead>
                  <tr>
                    <th scope="col" class="text-center">Nick del Administrador</th>
                    <th scope="col" class="text-center">Nombre(s)</th>
                    <th scope="col" class="text-center">Apellido Paterno</th>
                    <th scope="col" class="text-center">Apellido Materno</th>
                    <th scope="col" class="text-center">direccion</th>
                    <th scope="col" class="text-center">Telefono</th>
                    <th scope="col" class="text-center">Contraseña</th>     
                  </tr>
  
                </thead>
                <tbody>
                   <s:iterator value="ConsultaAdministrador" > 
                    <tr>    
                        
                        <td class="text-center"><s:property value="nick_adm"/></td> 
                        <td class="text-center"><s:property value="nombre_adm"/></td> 
                        <td class="text-center"><s:property value="apaterno_adm"/></td> 
                        <td class="text-center"><s:property value="amaterno_adm"/></td>
                        <td class="text-center"><s:property value="direccion_adm"/></td>
                        <td class="text-center"><s:property value="telefono_adm"/></td>
                        <td class="text-center"><s:property value="passwd_adm"/></td>
                   
                    </s:iterator>
                    </tr>
                </tbody>
            </table>   
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
