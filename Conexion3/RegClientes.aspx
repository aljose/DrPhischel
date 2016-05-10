<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegClientes.aspx.cs" Inherits="Conexion3.RegClientes" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <!--script de angular-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Doctor View Pacientes</title>

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
  </style>>

</head>
<body>
    <form id="form1" runat="server">
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
       <li><a href="file:///C:/Users/Majo/Desktop/Paginas/Home.html">Home</a></li>
       <!--Direcciona a la página de pacientes-->
        <li class="active"><a href="file:///C:/Users/Majo/Desktop/Paginas/Pacientes.html">Pacientes</a></li>
        <!--Direcciona a la página de las citas médicas (calendario)-->
        <li><a href="file:///C:/Users/Majo/Desktop/Paginas/CitasDoct.html">Citas</a></li>
        <!--Direcciona al historial de los pacientes-->
        <li><a href="file:///C:/Users/Majo/Desktop/Paginas/HistorDoc.html">Historial</a></li> 
        <!--Direcciona a crear o registrar un doctor-->
        <li><a href="file:///C:/Users/Majo/Desktop/Paginas/CreaUsua.html">Crear Usuario</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Exit</a></li>
      </
    </div>
  </div>
</nav> 
      <p> 
      <!--Client Register-->
    <b> <br> <font size="5" face="verdana"> Registro de Pacientes</font>
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          <br> <br>     
    <font size=4 face="Verdana"> 
       Nombre: <br>&nbsp;<input type="text"  ng-model="name"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <br> <br> 
       Primer Apellido: <br><input type="text"  ng-model="primApellido"> <br> <br>  
       Segundo Apellido: <br><input type="text"  ng-model="segApellido"> <br> <br>
       Cédula: <br><input type="text"  ng-model="ced"> <br> <br>
       Fecha de Nacimiento: <br><br>&nbsp;&nbsp;Día&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año <br><select class="col-xs-1" ng-model="diaNacClient">
    <!-- Día del mes -->
        <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option>
    </select>

    <!--Mes en que nació -->
<select class="col-xs-2" ng-model="mesNacClient">
        <option>Enero</option><option>Febrero</option><option>Marzo</option><option>Abril</option><option>Mayo</option><option>Junio</option><option>Julio</option><option>Agosto</option><option>Setiembre</option><option>Octubre</option><option>Noviembre</option><option>Diciembre</option>
    </select>
    
    <!-- Año -->
<input type="text" class="col-xs-1" ng-model="añoNacClient"> 
    <br><br> 
       Lugar de Residencia:<br><br>&nbsp;&nbsp;Provincia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cantón&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Distrito&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Otras Señas <br>
        <select class="col-xs-2" ng-model="mesNacClient">
        <option>Alajuela</option><option>Cartago</option><option>Guanacaste</option><option>Heredia</option><option>Limón</option><option>Puntarenas</option><option>San José</option>
    </select>
<!--Cantón-->
    <input type="text" class="col-sm-2" ng-model="Canton">
<!--Distrito-->
    <input type="text" class="col-sm-2" ng-model="Distrito">
<!--Otras Señas-->
    <input type="text" class="col-sm-4" ng-model="Señas">    
     <br> <br>
    </font></p></b>

    <div class="row">
      <div class="col-xs-12">
          <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Registrar" Width="76px" />
          <br>
      <!--register Button-->
        <button type="button" ng-click="Registrar" class="btn btn-default btn-lg">Registrar</button>
        <!--Cancel the Registration-->
         <a href="file:///C:/Users/Majo/Desktop/Paginas/Pacientes.html" class="btn btn-link" role="button">Cancelar</a> 
      </div></div>
    </form>
    <br><br>
    </div>
    
  </div>
</div>

<!--Footer which is a copyright-->
<footer class="container-fluid text-center">
  <p>Copyright 2016 by Irene, Guillén, Joshua, Majo. All Rights Reserved.</p>
</footer>

</body>
</html>
