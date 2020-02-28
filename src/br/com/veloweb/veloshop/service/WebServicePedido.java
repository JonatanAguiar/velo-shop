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

import br.com.veloweb.veloshop.modelo.Pedido;
import br.com.veloweb.veloshop.modelo.dao.DAO;

@Path("pedidos")
public class WebServicePedido {

	DAO<Pedido> dao = new DAO<Pedido>();

	@Path("{id}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String Busca(@PathParam("id") int id) {
		Pedido pedido = new Pedido();
		pedido = (Pedido) dao.findById(id, Pedido.class);
		return pedido.toJson();
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response adicionaProduto(Pedido pedido) {
		pedido = dao.save(pedido, pedido.getId());
		URI uri = URI.create("/pedido/" + pedido.getId());
		return Response.created(uri).build();

	}


}
