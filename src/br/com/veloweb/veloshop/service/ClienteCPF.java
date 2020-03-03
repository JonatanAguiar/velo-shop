package br.com.veloweb.veloshop.service;

import java.io.IOException;

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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpf = (String) request.getParameter("cpf");
		String json = null;
		// System.out.println(cpf);
		Cliente cliente = new Cliente();
		cliente = (Cliente) dao.findByCPF(cpf);
		Gson gson = new Gson();
		if (cliente != null) {
			json = gson.toJson(cliente.getCpf());
		} else {
			json = gson.toJson(null);
		}

		response.getWriter().print(json);

	}

}
