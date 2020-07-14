<%-- 
    Document   : crudProductos
    Created on : 03-07-2020, 21:18:40
    Author     : Edgard
--%>

<%@page import="dao.ProductoDAO"%>
<%@page import="modelos.Producto"%>
<%@page import="dao.EstadoDAO"%>
<%@page import="modelos.Estado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud Productos</title>
    </head>
    <body>
    <center>
        <h1>Registro Jugadores</h1>
        <menu >
            <a href="intranet.jsp">
            <menuitem >Inicio</menuitem>
            </a> |
            <a href="crudProductos.jsp">
            <menuitem >Registrar Jugador</menuitem>
            </a> | 
            
        </menu>
        <form action="ControladorProducto" method="post">
            <table>
                
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="apellido"/></textarea></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="text" name="edad"/></td>
                </tr><tr>
                    <td>posicion</td>
                    <td><input type="text" name="posicion"/></td>
                </tr>
                <tr>
                    <td>Sueldo</td>
                    <td><input type="text" name="sueldo"/></td>
                </tr>
                <tr>
                    <td>Equipo Actual</td>
                    <td><input type="text" name="posicion"/></td>
                </tr>
                
                <tr>
                    <td><input type="reset" value="Limpiar"/></td>
                    <td><input type="submit" value="Registrar"/></td>
                <input type="hidden" name="accion" value="1"/>
                </tr>
            </table>
        </form>
                        <% if(request.getParameter("msj")!= null){%>
        <h4><%= request.getParameter("msj") %></h4>
        <%}%>
        <table>
            <tr>
                <td>Código</td>
                <td>Nombre</td>
                <td>Descripción</td>
                <td>Cantidad</td>
                <td>Precio</td>
                <td>Estado</td>
                <td>Modificar</td>
                <td>Eliminar</td>
            </tr>
            <% ArrayList<Producto> productos = new ProductoDAO().obtenerProductos();
               for(Producto p: productos){               
                %>
            <tr>
                <td><%= p.getCodigo() %></td>
                <td><%= p.getNombre() %></td>
                <td><%= p.getDescripcion() %></td>
                <td><%= p.getCantidad() %></td>
                <td><%= p.getPrecio() %></td>
                <td><%= p.getEstado() %></td>
                <td><a href="modProducto.jsp?codigo=<%= p.getCodigo() %>">
                        <button type="button">Modificar</button>
                    </a></td>
                <td><a href="delProducto.jsp?codigo=<%= p.getCodigo() %>">
                        <button type="button">Eliminar</button>
                    </a></td>
            </tr>
            <% } %>
        </table>
    </center>
    </body>
</html>
