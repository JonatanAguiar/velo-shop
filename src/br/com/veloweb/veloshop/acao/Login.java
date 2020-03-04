package br.com.veloweb.veloshop.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.Produto;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		
		DAO dao = new DAO();
		Cliente cliente = new Cliente();
		cliente  = (Cliente) dao.findByCPF(cpf);
		
		if(cliente!=null) {			
			HttpSession session = request.getSession();
			session.setAttribute("clienteLogado", cliente);
			return "rd:ProdutoLista";
		}else {
			return "rd:LoginForm";
		}
	
	}
	
}
