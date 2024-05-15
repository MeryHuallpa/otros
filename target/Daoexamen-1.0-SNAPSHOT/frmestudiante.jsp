<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Estudiantes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="date"],
        input[type="checkbox"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Formulario de Estudiantes</h1>
    <form action="Inicio" method="post">
        <input type="hidden" name="id" value="${estudiante.id}" />
        <label>Nombres:</label>
        <input type="text" name="nombres" value="${estudiante.nombres}" />
        <label>Apellidos:</label>
        <input type="text" name="apellidos" value="${estudiante.apellidos}" />
        <label>Seminario:</label>
        <input type="text" name="seminario" value="${estudiante.seminario}" />
        <label>Confirmado:</label>
        <input type="checkbox" name="confirmado" value="1" <c:if test="${estudiante.confirmado == 1}">checked</c:if> /> 
        <input type="hidden" name="confirmado" value="0" />
        <label>Fecha:</label>
        <input type="date" name="fecha" value="${estudiante.fecha}" />
        <input type="submit" value="Guardar" />
    </form>
</div>
</body>
</html>
