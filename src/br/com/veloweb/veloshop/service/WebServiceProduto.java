package br.com.veloweb.veloshop.service;

import java.net.URI;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


import br.com.veloweb.veloshop.modelo.Produto;
import br.com.veloweb.veloshop.modelo.dao.DAO;

@Path("/produto")
public class WebServiceProduto {

	DAO<Produto> dao = new DAO<Produto>();

	@Path("{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String Busca(@PathParam("id") int id) {
		Produto produto = new Produto();
		produto = (Produto) dao.findById(id, Produto.class);
		return produto.toJson();
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response adicionaProduto(Produto produto) {
		produto = dao.save(produto, produto.getId());
		URI uri = URI.create("/pedido/" + produto.getId());
		return Response.created(uri).build();

	}
}
