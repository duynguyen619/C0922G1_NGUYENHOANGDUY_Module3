import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;

@WebServlet(name = "ProductDiscountCalculatorServlet", value = "/display-product")
public class ProductDiscountCalculatorServlet extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String productdescription = request.getParameter("productdescription");
        double listprice = Double.parseDouble(request.getParameter("listprice"));
        double discountpercent = Double.parseDouble(request.getParameter("discountpercent"));
        double discountamount = listprice * discountpercent * 0.01;
        double discountprice = listprice - discountamount;


        request.setAttribute("name", name);
        request.setAttribute("productdescription", productdescription);
        request.setAttribute("listprice", listprice);
        request.setAttribute("discountamount", discountamount);
        request.setAttribute("discountprice", discountprice);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
