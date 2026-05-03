package CrudProdutos;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* 
 * Luiz Gustavo Verissimo Monteiro - CB3030326 E  
 * Auan Júlio Galvão dos Santos - CB3030369
*/

public class Banco {
    private static List<Produto> lista = new ArrayList<>();
    private static Integer chaveSequencial = 1;

    static {
    	Produto p1 = new Produto();
    	p1.setId(chaveSequencial++);
    	p1.setNome("Arroz 5kg");
    	p1.setDescricao("Arroz branco tipo 1");
    	p1.setUnidadeCompra(2); // 2 = pacote/fardo
    	p1.setQtdPrevistoMes(50.0);
    	p1.setPrecoMaxComprado(25.0);
    	lista.add(p1);

    	Produto p2 = new Produto();
    	p2.setId(chaveSequencial++);
    	p2.setNome("Detergente Líquido");
    	p2.setDescricao("Detergente neutro 500ml");
    	p2.setUnidadeCompra(1);
    	p2.setQtdPrevistoMes(30.0);
    	p2.setPrecoMaxComprado(3.50);
    	lista.add(p2);

    	Produto p3 = new Produto();
    	p3.setId(chaveSequencial++);
    	p3.setNome("Caderno Universitário");
    	p3.setDescricao("Caderno 200 folhas capa dura");
    	p3.setUnidadeCompra(1);
    	p3.setQtdPrevistoMes(12.0);
    	p3.setPrecoMaxComprado(18.0);
    	lista.add(p3);
    }

    public void adiciona(Produto produto) {
        produto.setId(Banco.chaveSequencial++);
        Banco.lista.add(produto);
    }

    public List<Produto> getProdutos() { return Banco.lista; }

    public void removeProduto(Integer id) {
        Iterator<Produto> it = lista.iterator();
        
        while(it.hasNext()) {
            Produto p = it.next();
            if(p.getId().equals(id)) {
                it.remove();
            }
        }
    }
    public Produto buscaProdutoPelaId(Integer id) {
        for (Produto p : lista) {
            if(p.getId().equals(id)) {
                return p;
            }
        }
        return null;
    }
}