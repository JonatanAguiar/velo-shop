package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.Pedido;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class PedidoLista implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DAO<Pedido> daoPedido = new DAO<Pedido>();
		
		//PEGA O ID DO CLIENTE PELA SESSAO
		HttpSession sessao = request.getSession();
		Cliente cliente = (Cliente) sessao.getAttribute("clienteLogado");
		List<Pedido> listaDePedidos = daoPedido.findPedidosDoCliente(cliente.getId());
		
		
		request.setAttribute("listaDePedidos", listaDePedidos);
		
		return "fw:listaPedidos.jsp";
		
	}

}
