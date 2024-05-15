<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro Día del Internet</title>
   
    
</head>
<body>
<div class="container">
     <div style="
             width: 30%;
             padding: 2rem;
             margin: 0 auto;
             display: flex;
             justify-content: center;
             align-items: center;
             border: 1px solid black; ">
            PRIMER PARCIAL TEM-742<br>
            Nombre: Mery Huallpa Asistiri<br>
            Carnet: 9865689
        </div>
    <h1>Registro Día del Internet</h1>
    <p><a href="Inicio?action=add" class="action-links">Nuevo</a></p>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
            background-color: #fff;
        }

        th, td {
            padding: 8px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f0f0f0;
        }

        .action-links a {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }

        .action-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Seminario</th>
        <th>Confirmado</th>
        <th>Fecha</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="estudiante" items="${estudiantes}">
        <tr>
            <td>${estudiante.id}</td>
            <td>${estudiante.nombres}</td>
            <td>${estudiante.apellidos}</td>
            <td>${estudiante.seminario}</td>
            <td><input type="checkbox" ${estudiante.confirmado == 1 ? 'checked': ''} disabled /></td>
            <td>${estudiante.fecha}</td>
            <td><a href="Inicio?action=edit&id=${estudiante.id}" class="action-links">Editar</a></td>
            <td><a href="Inicio?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?')" class="action-links">Eliminar</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

