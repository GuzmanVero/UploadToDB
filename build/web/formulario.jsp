<%-- 
    Document   : formulario
    Created on : 22 abr. 2023, 22:00:16
    Author     : marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de datos</title>
    </head>
    <body>
            <h1>Ingrese el nuevo registro</h1>
        <form action="guardar.jsp" method="POST">
            Nombre: <input type="text" id="txtnombre" name="txtnombre"><br><br>
            Apellido: <input type="text" id="txtapellido" name="txtapellido"><br><br>
            Telefono: <input type="text" id="txttelefono" name="txttelefono"><br><br>
            <input type="submit" value="Enviar"><p>
            <a href='listar.jsp'>Volver</a><p>
            <a href='index.html'>Inicio</a>
        </form>
    </body>
</html>
