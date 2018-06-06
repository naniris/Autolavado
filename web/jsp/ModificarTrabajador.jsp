<%-- 
    Document   : ModificarTrabajador
    Created on : 6/06/2018, 01:55:22 AM
    Author     : naniz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Trabajador</title>
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
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top" >
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
                <a href="#" class="nav-link">Modificar</a>
              </li>
              <li class="nav-item">
                  <a href="#" class="nav-link">Eliminar</a>
                </li>
            </ul>
          </div>
        </div>
      </nav>
        <div class="col-lg-5" style="margin-left: 30%">
            <div class="form-group">
                <br>
                <br>
                <br>
                <h2 align="center">Modificar Trabajador</h2>
                <br>
                <form action="DetalleTrabajador" method="post">
                <s:select label="N° del Trabajador" headerKey="-1"
                          headerValue="--Seleccione el nombre del trabajador"
                          list="Trabajador" listValue="nombre" listKey="id_tra" name="id_tra"/>
                <br>
                <input type="submit" value="Listar Datos"/>
                </form>
                
                <form action="Trabajador2" method="post">
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">N° Trabajador:</span>
                    </div>
                        <input type="text" name="id_tra" maxlength="11" class="form-control" placeholder="Numero del trabajador" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Nick del Administrador:</span>
                    </div>
                        <input type="text" name="nick_adm" maxlength="20" class="form-control" placeholder="Nick del Administrador" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Nombre(s):</span>
                    </div>
                        <input type="text" name="nombre_tra" maxlength="30" class="form-control" placeholder="Nombre(s)" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Apellido Paterno:</span>
                    </div>
                        <input type="text" name="apaterno_tra" maxlength="20" class="form-control" placeholder="Apellido Paterno" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Apellido Materno:</span>
                    </div>
                        <input type="text" name="amaterno_tra" maxlength="20" class="form-control" placeholder="Apellido Materno" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Telefono:</span>
                    </div>
                        <input type="text" name="telefono_tra" maxlength="13" class="form-control" placeholder="Telefono" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <input type="submit" value="Registrar" class="btn btn-success btn-block" readonly="false">
                </form>
            </div>
        </div>    
    </body>
</html>
