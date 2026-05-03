package CrudProdutos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* 
 * Luiz Gustavo Verissimo Monteiro - CB3030326 E  
 * Auan Júlio Galvão dos Santos - CB3030369
*/

@WebServlet("/alteraProduto")
public class AlteraProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String paramId = request.getParameter("id");
        Integer id = Integer.valueOf(paramId);

        String nome = request.getParameter("nome");
        String unidadeCompraParam = request.getParameter("unidadeCompra");
        String descricao = request.getParameter("descricao");
        String qtdPrevistoMesParam = request.getParameter("qtdPrevistoMes");
        String precoMaxCompradoParam = request.getParameter("precoMaxComprado");

        Banco banco = new Banco();
        Produto produto = banco.buscaProdutoPelaId(id);
        
        // Atualizando os atributos do objeto encontrado no "banco"
        produto.setNome(nome);
        produto.setDescricao(descricao);
        produto.setUnidadeCompra(Integer.valueOf(unidadeCompraParam));
        produto.setQtdPrevistoMes(Double.valueOf(qtdPrevistoMesParam));
        produto.setPrecoMaxComprado(Double.valueOf(precoMaxCompradoParam));

        response.sendRedirect("listaProdutos");
    }
}