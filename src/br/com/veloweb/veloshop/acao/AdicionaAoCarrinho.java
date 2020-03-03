package br.com.veloweb.veloshop.acao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import br.com.veloweb.veloshop.modelo.Banco;
import br.com.veloweb.veloshop.modelo.Produto;
import br.com.veloweb.veloshop.modelo.dao.DAO;

public class AdicionaAoCarrinho implements Acao {

	static List<Produto> carrinhoLista = new ArrayList<Produto>();
	
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		DAO dao = new DAO();
		
		if(!estaNoCarrinho(id)) {
			carrinhoLista.add((Produto) dao.findById(Integer.parseInt(id), Produto.class));
		} else {
			System.out.println("Produto já está no carrinho de compras");
		}
		session.setAttribute("carrinho", carrinhoLista);
		
		return "rd:ProdutoLista";
	}

	public boolean estaNoCarrinho(String id) {
		for(Produto p : carrinhoLista) {
			if(Integer.parseInt(id) == p.getId()) {
				return true;
			}
		}
		return false;
	}
}
