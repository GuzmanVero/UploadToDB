<%-- 
    Document   : listar
    Created on : 22 abr. 2023, 22:02:45
    Author     : marce
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Registro.Registro"%>
<%@page import="Registro.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver registro</title>
    </head>
    <body>
        <h1>Listado de elementos:</h1>
        <%
          try
          {
            Conexion oCon = new Conexion("marce","marce123");
            Registro oRe = new Registro(oCon);
            ResultSet rs= oRe.getTodos();
            out.print("<table border=1>");
            out.print("<a href='formulario.jsp'>Nuevo registro</a><p>");
            out.print("<tr><td><B>ID</td><td><B>NOMBRE</td><td><B>APELLIDO</td><td><B>TELEFONO</td></tr>");
            //out.print("<tr><td><B>ID</td><td><B>NOMBRE</td><td><B>PRECIO ($)</td></tr>");
            while(rs.next())
            {
               out.print("<tr><td>"+ 
               rs.getObject(1).toString()+"</td><td>"+
               rs.getObject(2).toString()+"</td><td>"+
               rs.getObject(3).toString()+"</td><td>"+
               rs.getObject(4).toString()+"</td></tr>");                 
            }
            out.print("</table>");
          }
          catch(Exception ee)
          {//int i=1;
          System.out.println("Error al mostrar los registros: " + ee.getMessage());
          }
          out.print("<p><a href='index.html'>Inicio</a>");
        %>
    </body>
</html>
