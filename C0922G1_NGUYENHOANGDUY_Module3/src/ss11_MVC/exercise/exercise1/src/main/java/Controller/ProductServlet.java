package controller;

import model.Product;
import service.impl.ProductService;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreate(request, response);
                break;
            case "edit":
            case "view":
                break;
            case "delete":
                break;
            default:
                showList(request, response);
                break;
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("view/create.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.findAll();
        request.setAttribute("productList", productList);
        try {
            request.getRequestDispatcher("view/product.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "save":
                save(request, response);
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                break;
        }
    }
    private void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String describe = request.getParameter("describe");
        String producer = request.getParameter("producer");
        Product product=new Product(id,name,price,describe,producer);
        boolean check = productService.save(product);
        String mess = "Thêm thành công";

        if (!check) {
            mess = "Thêm mới thành công";
        }
        request.setAttribute("mess", mess);
        //showFormCreate(request,response);
        response.sendRedirect("product");
    }
}
