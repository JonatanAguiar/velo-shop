package br.com.veloweb.veloshop.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class FinalizaCompra implements Acao{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DAO<Cliente> dao = new DAO<Cliente>();
		Cliente cliente = new Cliente();
		
		cliente = dao.findByCPF(request.getParameter("cpf"));
		
		/* Criar o pedido e enviar para o banco NIEC */
	}

}
