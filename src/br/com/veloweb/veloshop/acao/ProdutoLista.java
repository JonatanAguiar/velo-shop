package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import br.com.veloweb.veloshop.modelo.Banco;
import br.com.veloweb.veloshop.modelo.Produto;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class ProdutoLista implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		Banco banco = new Banco();
		DAO dao = new DAO();
//		List<Produto> produtos = banco.getListaDeProdutos();
		List<Produto> produtos = dao.findAll("Produto");
		
		request.setAttribute("listaDeProdutos", produtos);
		
		return "fw:listaProdutos.jsp";
	}

}
