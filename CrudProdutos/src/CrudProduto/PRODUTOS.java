package CrudProduto;


public class PRODUTOS {

	private int id;
	private String nome;
	private int unidadeCompra; //qtde comprada por vez Ex: 5 unidades, 20 unidade....
	private String descricao;
	private double qtdPrevistoMes; // quantas vezes é comprado ^ Ex: 3 vezes por mes (3xUnidadeCompra
	private double precoMaxComprado; // této maximo pra ser gastado Ex: não pode gastar + que 500$
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getUnidadeCompra() {
		return unidadeCompra;
	}
	public void setUnidadeCompra(int unidadeCompra) {
		this.unidadeCompra = unidadeCompra;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public double getQtdPrevistoMes() {
		return qtdPrevistoMes;
	}
	public void setQtdPrevistoMes(double qtdPrevistoMes) {
		this.qtdPrevistoMes = qtdPrevistoMes;
	}
	public double getPrecoMaxComprado() {
		return precoMaxComprado;
	}
	public void setPrecoMaxComprado(double precoMaxComprado) {
		this.precoMaxComprado = precoMaxComprado;
	}
	
	
}
