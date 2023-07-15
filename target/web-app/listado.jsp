<%@ page import="java.util.ArrayList" %>
<%@ page import="ar.com.codoacodo23069.Producto" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="styles.jsp"></jsp:include>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>
    <div class="container">
      <div class="row">
        <div class="col-12">
            <% String ok = (String)request.getAttribute("eliminadook");%>
            <% String fail = (String)request.getAttribute("eliminadofail");%>

            <%
            if(ok != null) {
            %>
                <div class="alert alert-success">
                    exito
                </div>
            <%
            }
            %>
            <%
            if(fail != null) {
            %>
                <div class="alert alert-danger">
                    error
                </div>
            <%
            }
            %>
            <table class="table table-responsive">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">TÍTULO</th>
                    <th scope="col">PRECIO</th>
                    <th scope="col">CÓDIGO</th>
                    <th scope="col">AUTOR</th>
                    <th scope="col">FECHA</th>
                    <th class="ocultar" scope="col">IMÁGEN</th>
                    <th scope="col">Acciones</th>
                  </tr>
                </thead>
                <tbody>
                    <% 
                    //bajo el dato del request, que guardo el controller
                    ArrayList<Producto> listado = (ArrayList<Producto>)request.getAttribute("listado");//[]
                    for(Producto producto : listado) {
                    %>
                        <tr class="table-primary">
                            <th scope="row"><%=producto.getId()%></th>
                            <td><%=producto.getTitulo()%></td>
                            <td><%=producto.getPrecio()%></td>
                            <td><%=producto.getCodigo()%></td>
                            <td><%=producto.getAutor()%></td>
                            <td><%=producto.getFecha()%></td>
                            <td class="ocultar"><%=producto.getImagen()%></td>
                            <td>
                                <a href="<%=request.getContextPath()%>/EliminarController?id=<%=producto.getId()%>" 
                                    class="btn btn-danger" 
                                    tabindex="-1"
                                    role="button"
                                    aria-disabled="true">
                                    Eliminar
                                </a>
                            </td>
                            <td>
                                <a href="<%=request.getContextPath()%>/EditarController?id=<%=producto.getId()%>" 
                                    class="btn btn-primary" 
                                    tabindex="-1"
                                    role="button"
                                    aria-disabled="true">
                                    Editar
                                </a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
              </table>
        </div>
      </div>
    </div>
    <jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>