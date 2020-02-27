package br.com.veloweb.veloshop.service;

import java.net.URI;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import br.com.veloweb.veloshop.modelo.Pedido;
import br.com.veloweb.veloshop.modelo.dao.DAO;

@Path("pedidos")
public class WebServicePedido {

	DAO<Pedido> dao = new DAO<Pedido>();

	@Path("{id}")
	@GET
	public Pedido Busca(@PathParam("id") int id) {
		Pedido pedido = new Pedido();
		pedido = (Pedido) dao.findById(id, Pedido.class);
		return pedido;
	}

	@POST
	@Consumes(MediaType.APPLICATION_XML)
	public Response adicionaProduto(Pedido pedido) {
		pedido = dao.save(pedido, pedido.getId());
		URI uri = URI.create("/pedido/" + pedido.getId());
		return Response.created(uri).build();

	}

//	@Path("{id}/pedido/{pedidoId}")
//	@DELETE
//	public Response removePedido(@PathParam("id") int id, @PathParam("pedidoId") int produtoId) {
//
//		Pedido pedido = new Pedido();
//		pedido = (Pedido) dao.findById(id, Pedido.class);
//		dao.remove(id, Pedido.class);
//		return Response.ok().build();
//
//	}

//	@Path("{id}pedidospedidosId}/quantidade")
//	@PUT
//	public Response alteraPedido(@PathParam("id") Integer id, @PathParam("pedidoId") Integer produtoId,
//			String conteudo) {
//
//		Pedido pedido = new Pedido();
//		pedido = (Pedido) dao.findById(produtoId, Pedido.class);
//		// Produto produto = (Produto) new XStream().fromXML(conteudo);
//		// pedido.trocaQuantidade(produto);
//		return Response.ok().build();
//
//	}
}
