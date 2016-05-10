<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Conexion3.Home" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
    <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #000000;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" ng-click="isCollapsed = !isCollapsed">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="navbar-collapse" ng-class="isCollapsed ? 'collapse' : 'in'" ng-controller="HomeCtr">
      <ul class="nav navbar-nav">
      <!--Direcciona al home-->
       <li class="active"><a href="file:///C:/Users/Majo/Desktop/Paginas/Home.html">Home</a></li>
       <!--Direcciona a la página de pacientes-->
        <li><a href="http://localhost:50297/RegClientes.aspx">Pacientes</a></li>
        <!--Direcciona a la página de las citas médicas (calendario)-->
        <li><a href="file:///C:/Users/Majo/Desktop/Paginas/CitasDoct.html">Citas</a></li>
        <!--Direcciona al historial de los pacientes-->
        <li><a href="file:///C:/Users/Majo/Desktop/Paginas/HistorDoc.html">Historial</a></li> 
        <!--Direcciona a crear o registrar un doctor-->
        <li><a href="file:///C:/Users/Majo/Desktop/Paginas/CreaUsua.html">Crear Usuario</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Exit</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    
    <div class="col-sm-12 text-left"> 
      <h1>Welcome</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
    </div>
    
  </div>
</div>



<footer class="container-fluid text-center">
  <p>Copyright 2016 by Irene, Guillén, Joshua, Majo. All Rights Reserved.</p>
</footer>
    
</body>
</html>
