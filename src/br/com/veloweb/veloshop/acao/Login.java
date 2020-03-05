package br.com.veloweb.veloshop.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");

		DAO<Cliente> dao = new DAO<Cliente>();
		Cliente cliente = new Cliente();
		cliente = (Cliente) dao.findByCPF(cpf);
		
		String proximaUrl = request.getParameter("proxUrl");
		
		//SE PROXIMA URL FOR IGUAL A NULL ENTÃO SETA COMO "ProdutoLista", SENÃO PEGA A URL QUE VEIO DO REQUEST.
		proximaUrl = (proximaUrl == null) ? "ProdutoLista" : proximaUrl;
				
		if (cliente != null) {
			
			String primeiroNome = cliente.getNome().split(" ")[0];
			
			if (primeiroNome.equals(nome)) {
				HttpSession session = request.getSession();
				session.setAttribute("clienteLogado", cliente);
			}
			
			return "rd:"+proximaUrl;
		}

		return "rd:LoginForm";
	}

}
