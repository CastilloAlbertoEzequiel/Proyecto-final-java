

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
                <section>
                    <h1>Editar Articulo</h1> 
                    <!--<%=request.getContextPath()%> se convierte en el contexto
                    /web-app
                    
                    -->
                    <% Producto producto = (Producto)request.getAttribute("producto");%>
                    <form method="Post" action="<%=request.getContextPath()%>/EditarController?id=<%=producto.getId()%>">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" 
                                class="form-label">Nombre</label>
                            <input name="nombre" 
                                type="text" 
                                class="form-control" 
                                id="exampleFormControlInput1"
                                placeholder="Nombre"
                                maxlength="50"
                                value="<%=producto.getTitulo()%>"
                                >
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Precio
                            </label>
                            <input name="precio"
                                step="0.01" 
                                type="number" 
                                class="form-control" 
                                id="exampleFormControlTextarea1"
                                value="<%=producto.getPrecio()%>"
                                >
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Im&aacute;gen
                            </label>
                            <input name="imagen" 
                                type="file" 
                                class="form-control" 
                                id="exampleFormControlTextarea1"
                                value="<%=producto.getImagen()%>"
                                >
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">C&oacute;digo
                            </label>
                            <input name="codigo" 
                                type="text"
                                disabled
                                readonly 
                                class="form-control" 
                                id="exampleFormControlTextarea1" 
                                maxlength="7"
                                value="<%=producto.getCodigo()%>"
                                >
                        </div>
                        <div class="mb-3">
                            <label for="autor" 
                                class="form-label">Autor
                            </label>
                            <input name="autor" 
                                type="text" 
                                class="form-control" 
                                id="autor" 
                                maxlength="50"
                                value="<%=producto.getAutor()%>"
                                >
                        </div>
                        <button class="btn btn-primary">
                            Guardar cambios
                        </button>
                    </form>
                </section>
            </div>
        </div>

        <jsp:include page="scripts.jsp"></jsp:include>
</body>

</html>