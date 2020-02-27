package br.com.veloweb.veloshop.service;


import java.net.URI;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import javax.xml.ws.Response;

import br.com.veloweb.veloshop.modelo.Cliente;
import br.com.veloweb.veloshop.modelo.dao.DAO;

@Path("cliente")
public class WebServiceCliente{
	
	DAO<Cliente> dao = new DAO<Cliente>();
	
	@Path("{id}")
	@GET
	public Cliente Busca(@PathParam("id") int id) {
		Cliente cliente = new Cliente();
		cliente = (Cliente) dao.findById(id, Cliente.class);
		return cliente;
		
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_XML)
	public Response adicionaCliente(Cliente cliente) {
		cliente = dao.save(cliente, cliente.getId());
		URI uri = URI.create("/cliente/" + cliente.getId());
		return null;
		//return Response.created(uri).build();
		
		
	}
	
	
	
}
