package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.Pedido;
import br.com.veloweb.veloshop.modelo.Produto;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class FinalizaCompra implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DAO<Cliente> daoCliente = new DAO<Cliente>();
		Cliente cliente = new Cliente();
		String cpfDoCliente = request.getParameter("cpf");
		cliente = daoCliente.findByCPF(cpfDoCliente);

		Pedido pedido = new Pedido();

		pedido.setCliente(cliente);
		pedido.setDataEHora(LocalDateTime.now());

		HttpSession sessao = request.getSession();
		List<Produto> produtos = (List<Produto>) sessao.getAttribute("carrinho");
		
		pedido.setItensDoPedido(produtos);

		double total = 0;
		
		if(produtos.isEmpty()) {
			return "fw:erroSessaoExpirou.jsp";
		}
		
		for (Produto produto : produtos) {
			total += produto.getValor() * produto.getQuantidade();
		}
		
		pedido.setValorTotal(total);
		
		request.setAttribute("pedido", pedido);
		request.setAttribute("listaDeProduto", produtos);
		
		DAO<Pedido> daoPedido = new DAO<Pedido>();
		daoPedido.save(pedido, null);
		
		produtos.clear();
		//SUA COMPRA FOI EFETUADA COM SUCESSO :)
		
		return "fw:listaProdutos.jsp";

	}
}
