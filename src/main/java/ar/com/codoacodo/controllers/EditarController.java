package ar.com.codoacodo.controllers;

import java.io.IOException;

import ar.com.codoacodo.dao.DAO;
import ar.com.codoacodo.dao.impl.MysqlDaoImpl;
import ar.com.codoacodo23069.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditarController")
public class EditarController extends HttpServlet{
 
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        
        DAO dao = new MysqlDaoImpl();
        
        try {
            Producto producto = dao.getById(Long.parseLong(id));
            req.setAttribute("producto", producto);
            getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
           
        } catch (Exception e) {
            e.printStackTrace();
            
            req.setAttribute("eliminadofail", "Error eliminado el producto id:" + id);
            getServletContext().getRequestDispatcher("ListadoProductosController").forward(req, resp);
        }
         
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String id = req.getParameter("id");
        //asumimos que aca llegan lo parametros desde el formulario
        String nuevoTitulo = req.getParameter("nombre");//request.getTitulo();
        String nuevoAutor = req.getParameter("autor");
        double nuevoPrecio = Double.parseDouble(req.getParameter("precio"));
        String nuevoImagen = req.getParameter("imagen");
        String nuevoCodigo = req.getParameter("codigo");

        
        DAO dao = new MysqlDaoImpl();
        
        try {
            Producto nuevoProducto = dao.getById(Long.parseLong(id));
            nuevoProducto.setTitulo(nuevoTitulo);
            nuevoProducto.setPrecio(nuevoPrecio);
            nuevoProducto.setImagen(nuevoImagen);
            nuevoProducto.setAutor(nuevoAutor);

            dao.update(nuevoProducto);//manejo de errores en java: try/catch/finally >  Spring
          // req.setAttribute("Productomodificado","Se ha modificado el producto id:" +id);
            System.out.println(nuevoProducto.toString());
           getServletContext().getRequestDispatcher("/ListadoProductosController").forward(req, resp);// le saque la / a ListadoProductosController
           
        } catch (Exception e) {

            e.printStackTrace();
            //req.setAttribute("Productonomodificado", "No se ha modificado el producto id:" + id);
            getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
        }

        }
}