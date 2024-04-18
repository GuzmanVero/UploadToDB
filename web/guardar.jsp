<%-- 
    Document   : guardar
    Created on : 23 abr. 2023, 00:16:22
    Author     : marce
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Registro.Registro"%>
<%@page import="Registro.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar información</title>
    </head>
    <body>
         <%
          try
          {
            //primero recibir los datos desde el cliente
            String nombre= request.getParameter("txtnombre");
            String apellido= request.getParameter("txtapellido");
            String telefono= request.getParameter("txttelefono");
            
            // inicializar la conexion
            Conexion oCon = new Conexion("marce","marce123");
            Registro oRe = new Registro(nombre,apellido,telefono,oCon);
            
            //guardar la informacion en la BD
            oRe.guardar();         
            //alertar al usuario
            out.print("Registro guardado correctamente.<p>");
            out.print("<a href='listar.jsp'>Consultar todos los registros</a>");
            
          }
          catch(Exception ee)
          {
            int i=1;
            out.print("Ha ocurrido un error. Contacte al Administrador.  "+ ee);
          }
        %>
    </body>
</html>
