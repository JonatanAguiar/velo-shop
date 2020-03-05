package br.com.veloweb.veloshop.modelo;

import java.util.List;

import br.com.veloweb.veloshop.modelo.dao.DAO;

public class Testa {
	public static void main(String[] args) {
		Pedido pedido = new Pedido();
		DAO<Pedido> dao = new DAO<Pedido>();
		pedido.setId(118);
		
		
//		pedido = dao.findById(118, Pedido.class);
		pedido = dao.findByIdComProdutos(pedido.getId());
		
		//List<Produto> produtos = pedido.getItensDoPedido();
		System.out.println(pedido.getCliente().getNome());
		System.out.println(pedido.getItensDoPedido());
		
		List<Produto> produtos = pedido.getItensDoPedido();
		
		//System.out.println(produtos.size());
		
		produtos.forEach(p -> {
			System.out.println(p.getDescricao());
		});
		
		
	}
}
