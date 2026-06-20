package com.superagro.controller;

import com.superagro.model.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/productos")
public class ProductoServlet extends HttpServlet {

    private static List<Producto> listaProductos = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("productosAtributo", listaProductos);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("txtId");
        String nombre = request.getParameter("txtNombre");
        String categoria = request.getParameter("ddlCategoria");
        int stock = Integer.parseInt(request.getParameter("numStock"));
        BigDecimal precio = new BigDecimal(request.getParameter("numPrecio"));

        Producto nuevoProducto = new Producto(id, nombre, categoria, stock, precio);

        listaProductos.add(nuevoProducto);

        response.sendRedirect("productos");
    }
}
