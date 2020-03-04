package br.com.veloweb.veloshop.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Cliente;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		
		
		HttpSession session = request.getSession();
		Cliente cliente = new Cliente();
		//cliente
			
//		session.setAttribute("usuarioLogado", );
//		return "rd:VoosLista";
		return null;
	
	}
	
}
