package CrudProdutos;

import java.io.IOException;
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

@WebServlet("/mostraProduto")
public class MostraProdutoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	Integer id = Integer.valueOf(request.getParameter("id"));
        Banco banco = new Banco();
        Produto produto = banco.buscaProdutoPelaId(id);
        
        request.setAttribute("produto", produto);
        RequestDispatcher rd = request.getRequestDispatcher("/formAlteraProduto.jsp");
        rd.forward(request, response);
    }
}