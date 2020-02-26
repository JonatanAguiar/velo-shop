package br.com.veloweb.veloshop.modelo;

import java.util.ArrayList;
import java.util.List;

public class Banco {

	private static List<Produto> listaDeProdutos = new ArrayList<Produto>();
	private static List<Cliente> listaDeClientes = new ArrayList<Cliente>();
	
	static {
		
		Produto produto1 = new Produto();
		produto1.setId(1);
		produto1.setNome("Produto nro 1");
		produto1.setDescricao("Este é o produto de nro 1 e é muito bom nossa");
		produto1.setValor(10);
		Produto produto2 = new Produto();
		produto2.setId(2);
		produto2.setNome("Produto nro 2");
		produto2.setDescricao("Este é o produto de nro 2 e é mais ou menos hm");
		produto2.setValor(20);
		Produto produto3 = new Produto();
		produto3.setId(3);
		produto3.setNome("Produto nro 3");
		produto3.setDescricao("Este é o produto de nro 3 e é ok");
		produto3.setValor(30);
		Produto produto4 = new Produto();
		produto4.setId(4);
		produto4.setNome("Produto nro 4");
		produto4.setDescricao("Este é o produto de nro 4 e é ");
		produto4.setValor(40);
		Produto produto5 = new Produto();
		produto5.setId(5);
		produto5.setNome("Produto nro 5");
		produto5.setDescricao("Este é o produto de nro 5 e ahlelekleklek");
		produto5.setValor(50);
		Produto produto6 = new Produto();
		produto6.setId(6);
		produto6.setNome("Produto nro 6");
		produto6.setDescricao("Este é o produto de nro 6 e nossa");
		produto6.setValor(60);
		
		
		listaDeProdutos.add(produto1);
		listaDeProdutos.add(produto2);
		listaDeProdutos.add(produto3);
		listaDeProdutos.add(produto4);
		listaDeProdutos.add(produto5);
		listaDeProdutos.add(produto6);
	}

	public List<Produto> getListaDeProdutos() {
		return listaDeProdutos;
	}

	public static void setListaDeProdutos(List<Produto> listaDeProdutos) {
		Banco.listaDeProdutos = listaDeProdutos;
	}

	public Produto getProdutoPorId(String id) {
		for(Produto p : listaDeProdutos) {
			if(Integer.parseInt(id) == p.getId()) {
				return p;
			}
		}
		return null;
	}
	
}
