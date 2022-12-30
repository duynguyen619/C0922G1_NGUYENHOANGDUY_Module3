import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet" ,value = "/customer")
public class CustomerServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList<>();
        customers.add(new Customer("Nguyễn Hoàng Duy", "06/06/2001", "Đà Nẵng", "https://vnn-imgs-f.vgcloud.vn/2019/09/03/08/thay-giao-body-6-mui-va-loat-hot-boy-duoc-hoi-chi-em-san-lung.jpg?width=420"));
        customers.add(new Customer("Nguyễn Hoàng Duy", "06/06/2001", "Đà Nẵng", "https://vnn-imgs-f.vgcloud.vn/2019/09/03/08/thay-giao-body-6-mui-va-loat-hot-boy-duoc-hoi-chi-em-san-lung.jpg?width=420"));
        customers.add(new Customer("Nguyễn Hoàng Duy", "06/06/2001", "Đà Nẵng", "https://vnn-imgs-f.vgcloud.vn/2019/09/03/08/thay-giao-body-6-mui-va-loat-hot-boy-duoc-hoi-chi-em-san-lung.jpg?width=420"));

        request.setAttribute("CustomerList", customers);
        RequestDispatcher dispatcher=request.getRequestDispatcher("display.jsp");
        dispatcher.forward(request,response);
    }
}
