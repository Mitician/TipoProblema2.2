<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hey</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
	<h5 class="mt-4" style="text-align:center">Peliculas</h5>
	<form action="/dpeliculas/agregar" method="POST" class="main-form needs-validation" style="width:500px; margin:auto"novalidate>
    <div class="form-group">
        <label for="rut">Rut</label>
        <input type="text" name="rut" id="rut" class="form-control">
    </div>
    <div class="input-group">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" class="form-control">
        <label for="apellido">Apellido</label>
        <input type="text" name="apellido" id="apellido" class="form-control">
    </div>
    <div class="form-group">
        <label for="apellido">Apellido</label>
        <input type="text" name="apellido" id="apellido" class="form-control">
    </div>
     <div class="form-group">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" class="form-control">
    </div>
     <div class="form-group">
        <label for="sexo">Sexo</label>
        <input type="text" name="sexo" id="sexo" class="form-control">
    </div>
     <div class="form-group">
        <label for="profesion">Profesión</label>
        <input type="text" name="profesion" id="profesion" class="form-control">
    </div>
    <br>
    <div class="row justify-content-center">
        <input type="submit" class="btn btn-primary" value="Agregar pelicula">
    </div>
    </form>
    <br>
    <hr>
    <div class="col-xl-5 col-lg-6 col-md-8 col-sm-10 mx-auto text-center form p-4">
    <table class="table">
    	<thead class="thead-light">
    		<tr>
    			<th>Rut</th>
    			<th>Nombre</th>
    			<th>Apellido</th>
    			<th>Email</th>
    			<th>Sexo</th>
    			<th>Profesión</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach var = "persona" items="${personas}">
    		<tr>
    			<td><c:out value="${persona.rut}"></c:out></td>
    			<td><c:out value="${persona.nombre}"></c:out></td>
    			<td><c:out value="${persona.apellido}"></c:out></td>
    			<td><c:out value="${persona.email}"></c:out></td>
    			<td><c:out value="${persona.sexo}"></c:out></td>
    			<td><c:out value="${persona.profesion}"></c:out></td>
    			<td><button type="button" class="btn btn-success" id='${persona.id}'data-bs-toggle="modal" data-bs-target="#editModal"><i class="fas fa-edit"></i></button>
           			 <a type="button" class="btn btn-danger" href='/dpeliculas/eliminar/${persona.id}'><i class="far fa-trash-alt"></i></a></td>
    		</tr>
    		</c:forEach>
    	</tbody>
    </table>
   	</div>
   	

<!-- 
<form action="dpeliculas/actualizar/" method="POST">
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Formulario de modificación</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="form-group">
             <label for="idEdit">ID (No modificable)</label>
             <input type="text" id="idEdit" name="idEdit" class="form-control" readonly>
             <br>
		 	<div class="form-group">
             <label for="nombreEdit">Ingrese nuevo nombre</label>
             <input type="text" id="nombreEdit" name="nombreEdit" class="form-control">
             <br>
         	 </div>
          	<div class="form-group">
              <label for="categoriaEdit">Ingrese nueva categoria</label>
              <input type="text" id="categoriaEdit" name=categoriaEdit class="form-control" >
              <br>
         	 </div>
          	<div class="form-group">
              <label for="precioEdit">Ingrese nuevo precio</label>
              <input type="text" id="precioEdit" name="precioEdit" class="form-control" >
              <br>
          	</div>  
	</div>
      <div class="modal-footer">
        <input type="submit" class="btn btn-primary" value="Modificar">
      </div> 
    </div>
  </div>
 </div>
</div>
</form>
 -->
</body>
</html>