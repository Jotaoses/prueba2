<%-- 
    Document   : registrarEquipo
    Created on : 14-jul-2020, 18:57:14
    Author     : Jota
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
        <title>Registrar Equipo</title>
    </head>
    <body>
    <center>
        <h1>Registro Equipo</h1>
        <menu >
            <a href="intranet.jsp">
            <menuitem >Inicio</menuitem>
            </a> |
            <a href="crudProductos.jsp">
            <menuitem >Registrar Jugador</menuitem>
            </a> | 
            <a href="registrarEquipo.jsp">
            <menuitem >Registrar Equipo</menuitem>
            </a> | 
            
        </menu>
        <form action="ControladorProducto" method="post">
            <table>
                
                <tr>
                    <td>Código</td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="apellido"/></textarea></td>
                </tr>
                <tr>
                    <td>Procedencia</td>
                    <td><input type="text" name="edad"/></td>
                </tr><tr>
                    <td>Estadio</td>
                    <td><input type="text" name="posicion"/></td>
                </tr>
                <tr>
                    <td>division</td>
                    <td><input type="text" name="sueldo"/></td>
                </tr>
                <tr>
                    <td>Jugadores</td>
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
