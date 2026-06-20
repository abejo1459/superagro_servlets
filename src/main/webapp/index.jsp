<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.List" %>
        <%@ page import="com.superagro.model.Producto" %>
            <!DOCTYPE html>
            <html lang="es">
                
            <head>
                <meta charset="UTF-8">
                <title>Super Agro - Panel de Inventario</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            </head>

            <body class="bg-light">

                <div class="container mt-5">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h1 class="text-success">🌱 Super Agro - Gestión de Inventario</h1>
                        <a href="formulario-producto.jsp" class="btn btn-primary">+ Registrar Nuevo Producto</a>
                    </div>

                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title text-secondary">Productos en Sistema</h5>
                            <table class="table table-striped align-middle">
                                <thead class="table-dark">
                                    <tr>
                                        <th>ID (SKU)</th>
                                        <th>Nombre</th>
                                        <th>Categoría</th>
                                        <th>Precio Unitario</th>
                                        <th>Stock Actual</th>
                                        <th>Estado Alerta</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% List<Producto> productos = (List<Producto>)
                                            request.getAttribute("productosAtributo");
                                            if (productos != null && !productos.isEmpty()) {
                                            for (Producto prod : productos) {
                                            %>
                                            <tr>
                                                <td>
                                                    <%= prod.getId() %>
                                                </td>
                                                <td><strong>
                                                        <%= prod.getNombre() %>
                                                    </strong></td>
                                                <td>
                                                    <%= prod.getCategoria() %>
                                                </td>
                                                <td>$<%= prod.getPrecio() %>
                                                </td>
                                                <td>
                                                    <%= prod.getStock() %> und
                                                </td>
                                                <td>
                                                    <% if(prod.getStock() <=5) { %>
                                                        <span class="badge bg-danger">Stock Crítico</span>
                                                        <% } else if(prod.getStock() <=15) { %>
                                                            <span class="badge bg-warning text-dark">Stock Bajo</span>
                                                            <% } else { %>
                                                                <span class="badge bg-success">Óptimo</span>
                                                                <% } %>
                                                </td>
                                            </tr>
                                            <% } } else { %>
                                                <tr>
                                                    <td colspan="6" class="text-center text-muted">No hay productos
                                                        registrados en el inventario.</td>
                                                </tr>
                                                <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </body>

            </html>