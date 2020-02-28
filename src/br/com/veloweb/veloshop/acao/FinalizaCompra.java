package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.Pedido;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class FinalizaCompra implements Acao{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DAO<Cliente> dao = new DAO<Cliente>();
		Cliente cliente = new Cliente();
		
		cliente = dao.findByCPF(request.getParameter("cpf"));
		
		Pedido pedido = new Pedido();
		
		pedido.setCliente(cliente);
		pedido.setDataEHora(LocalDateTime.now());
		
		HttpSession sessao = request.getSession()
		
		
	}

}
