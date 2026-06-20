<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Super Agro - Nuevo Producto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container mt-5" style="max-width: 600px;">
            <div class="card shadow-sm">
                <div class="card-header bg-success text-white">
                    <h3 class="card-title mb-0">Registrar Insumo / Producto</h3>
                </div>
                <div class="card-body">
                    <form action="productos" method="POST">

                        <div class="mb-3">
                            <label for="txtId" class="form-label">ID / Código de Barras</label>
                            <input type="text" class="form-width form-control" id="txtId" name="txtId" required
                                placeholder="Ej. SKU-1020">
                        </div>

                        <div class="mb-3">
                            <label for="txtNombre" class="form-label">Nombre del Producto</label>
                            <input type="text" class="form-control" id="txtNombre" name="txtNombre" required
                                placeholder="Ej. Fertilizante NPK Bulto">
                        </div>

                        <div class="mb-3">
                            <label for="ddlCategoria" class="form-label">Categoría</label>
                            <select class="form-select" id="ddlCategoria" name="ddlCategoria" required>
                                <option value="Semillas">Semillas</option>
                                <option value="Fertilizantes">Fertilizantes</option>
                                <option value="Herramientas">Herramientas</option>
                                <option value="Alimentos">Alimento Concentrado</option>
                            </select>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="numStock" class="form-label">Stock Inicial</label>
                                <input type="number" class="form-control" id="numStock" name="numStock" min="0" required
                                    placeholder="0">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="numPrecio" class="form-label">Precio Unitario ($)</label>
                                <input type="number" step="0.01" class="form-control" id="numPrecio" name="numPrecio"
                                    min="0" required placeholder="0.00">
                            </div>
                        </div>

                        <div class="d-flex justify-content-end gap-2 mt-4">
                            <a href="productos" class="btn btn-secondary">Cancelar</a>
                            <button type="submit" class="btn btn-success">Guardar Producto</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>

    </html>