package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.veloweb.veloshop.modelo.Produto;

public class FinalizarPedido implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		List<Produto> lista = (List<Produto>) session.getAttribute("carrinho");

		lista.forEach(p -> {
			String quantidade = request.getParameter("quantidade:"+p.getId());
			session.setAttribute("produtoQuantidade:"+p.getId(), quantidade);
			p.setQuantidade(Integer.parseInt(quantidade));
		});
		
		request.setAttribute("listaFinalizada", lista);
		
		return "fw:finalizaCompra.jsp";
	}

}
