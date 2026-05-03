package CrudProdutos;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* 
 * Luiz Gustavo Verissimo Monteiro - CB3030326 E  
 * Auan Júlio Galvão dos Santos - CB3030369
*/

@WebServlet("/listaProdutos")
public class ListaProdutosServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	Banco banco = new Banco();
        List<Produto> lista = banco.getProdutos();
        
        
        request.setAttribute("produtos", lista);
        RequestDispatcher rd = request.getRequestDispatcher("/listaProdutos.jsp");
        rd.forward(request, response);
    }
}