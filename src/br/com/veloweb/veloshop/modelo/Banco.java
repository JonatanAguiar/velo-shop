package br.com.veloweb.veloshop.modelo;

import java.util.ArrayList;
import java.util.List;

public class Banco {

	private static List<Produto> listaDeProdutos = new ArrayList<Produto>();
	private static List<Cliente> listaDeClientes = new ArrayList<Cliente>();
	
	static {
		// Cadastro de produtos
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
		
		// Cadastro de Clientes
		
		Cliente cli1 = new Cliente();
		Cliente cli2 = new Cliente();
		Cliente cli3 = new Cliente();
		Cliente cli4 = new Cliente();
		Cliente cli5 = new Cliente();
		Cliente cli6 = new Cliente();
		
		cli1.setId(1);
		cli1.setCpf("02957509016");
		cli1.setEndereco("Rua Senador Alberto Pasqualini, 361, ap 303");
		cli1.setNome("Lucas A F Brasil");
		listaDeClientes.add(cli1);
		cli2.setId(2);
		cli2.setCpf("2");
		cli2.setEndereco("Endereço da Carol");
		cli2.setNome("Caroline Feliz da Rosa");
		listaDeClientes.add(cli2);
		cli3.setId(3);
		cli3.setCpf("3");
		cli3.setEndereco("Rua do Artur");
		cli3.setNome("Artur da Rosa Feliz");
		listaDeClientes.add(cli3);
		cli4.setId(4);
		cli4.setCpf("4");
		cli4.setEndereco("Venancio");
		cli4.setNome("Jon Koroch de Aguiar Feliz");
		listaDeClientes.add(cli4);
		cli5.setId(5);
		cli5.setCpf("5");
		cli5.setEndereco("Lugar onde o Henrique mora");
		cli5.setNome("Henrique Feliz Fava");
		listaDeClientes.add(cli5);
		cli6.setId(6);
		cli6.setCpf("6");
		cli6.setEndereco("Casa do Douglas");
		cli6.setNome("Douglas Feliz Kuhn");
		listaDeClientes.add(cli6);
		
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
