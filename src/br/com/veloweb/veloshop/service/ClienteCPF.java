package br.com.veloweb.veloshop.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.dao.DAO;

@WebServlet("/clientes")
public class ClienteCPF extends HttpServlet {

	private static final long serialVersionUID = 1L;
	DAO<Cliente> dao = new DAO<Cliente>();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String json = null;
		// System.out.println(cpf);
		List<Cliente> lista = dao.findAll("Cliente");
		Gson gson = new Gson();
		if (lista != null) {
			json = gson.toJson(lista);
		} else {
			json = gson.toJson(null);
		}

		response.setContentType("application/json");
		response.getWriter().print(json);

	}

}
