package controller;

import model.customer.Customer;
import repositoty.customer.ICustomerRepositoty;
import repositoty.customer.impl.CustomerRepository;
import service.customer.CustomerService;
import service.customer.ICustomer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomer customerService = new CustomerService();
    private ICustomerRepositoty customerRepositoty = new CustomerRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "list":
              break;
            default:
                showList(request, response);
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList= customerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);
        try {
            request.getRequestDispatcher("view/customer/list.jsp").forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "delete":
                deleteCustomer(request,response);
                break;
            default:
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int deleteId = Integer.parseInt(request.getParameter("delete"));
        boolean check = customerService.deleteCustomer();
        String mess = "Xóa thành công";
        if (!check) {
            mess = "Xóa không thành công";
        }
        request.setAttribute("mess", mess);
        showList(request, response);
    }
}
