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
		
		HttpSession sessao = request.getSession();
		String proximaUrl = (String) sessao.getAttribute("urlPassada");
		sessao.removeAttribute("urlPassada");

		//SE PROXIMA URL FOR IGUAL A NULL ENT�O SETA COMO "ProdutoLista", SEN�O PEGA A URL QUE VEIO DO REQUEST.
		proximaUrl = (proximaUrl == null) ? "ProdutoLista" : proximaUrl;
				
		if (cliente != null && cliente.getNome().split(" ")[0].equals(nome)) {
			HttpSession session = request.getSession();
			session.setAttribute("clienteLogado", cliente);
			System.out.println(proximaUrl);
			return "rd:"+proximaUrl;
		}
		
		request.setAttribute("loginInvalido", "true");
		return "fw:formLogin.jsp";
	}

}
