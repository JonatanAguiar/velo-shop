package br.com.veloweb.veloshop.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.veloweb.veloshop.modelo.Banco;

public class ProdutoInfo implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		Banco banco = new Banco();
		
		request.setAttribute("produto", banco.getProdutoPorId(id));
		
		return "fw:produtoInfo.jsp";
	}

	
}
