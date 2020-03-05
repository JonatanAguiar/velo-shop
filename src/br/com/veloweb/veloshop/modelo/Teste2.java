package br.com.veloweb.veloshop.modelo;

import java.util.ArrayList;
import java.util.List;

import br.com.veloweb.veloshop.modelo.dao.DAO;

public class Teste2 {
	public static void main(String[] args) {
		Cliente c = new Cliente();
	       
        c.setCpf("80125691750");
        c.setEndereco("Rua José Borges do Canto, 635");
        c.setId(20);
        c.setNome("Henrique Yuri Enzo Ferreira");
       
        List<Pedido> lstPedido = new ArrayList<Pedido>();
       
        DAO dao = new DAO();
       
        lstPedido = dao.findPedidosDoCliente(c.getId());
        System.out.println(lstPedido);
        
        List<Pedido> lstPedidoComProduto = new ArrayList<Pedido>();
        
        for (Pedido pedido : lstPedido) {
        	System.out.println(pedido.getId());
        	Pedido pedidoComProduto = new Pedido();
        	pedidoComProduto.setId(pedido.getId());
			pedidoComProduto = dao.findByIdComProdutos(pedidoComProduto.getId());
			lstPedidoComProduto.add(pedidoComProduto);
			
		}
        
       
        for (Pedido p : lstPedidoComProduto) {
            System.out.println("ID: " + p.getId());
            System.out.println("VALOR: R$" + p.getValorTotal());
            System.out.println("CLIENTE: " + p.getCliente().getNome());
            System.out.println("DATA: " + p.getDataEHora());
           
            for (Produto prod : p.getItensDoPedido()) {
                System.out.println("---------------------");
                System.out.println("nome: " + prod.getNome());
                System.out.println("descricao: " + prod.getDescricao());
                System.out.println("valor: rs" + prod.getValor());
                System.out.println("quantidade: " + prod.getQuantidade());
                System.out.println("---------------------");
            }
        }
	}
}
