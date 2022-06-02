package bookstore;
import bookstore.database;
import bookstore.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailServlet",urlPatterns = "/details")
public class DetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        Book book = database.select(name);
        response.setContentType("text/html;charset=utf-8");
        if(book!=null){
            request.setAttribute("book",book);
            request.getRequestDispatcher("/details.jsp").forward(request,response);
        }else{
            response.getWriter().write("服务器可能又出问题了");
        }
    }
}