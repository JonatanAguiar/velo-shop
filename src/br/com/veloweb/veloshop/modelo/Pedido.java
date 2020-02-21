package br.com.veloweb.veloshop.modelo;

import java.time.LocalDateTime;
import java.util.List;

public class Pedido {

	private int id;
	private Cliente cliente;
	private List<Produto> itensDoPedido;
	private LocalDateTime dataEHora;
	private double valorTotal;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public List<Produto> getItensDoPedido() {
		return itensDoPedido;
	}
	public void setItensDoPedido(List<Produto> itensDoPedido) {
		this.itensDoPedido = itensDoPedido;
	}
	public LocalDateTime getDataEHora() {
		return dataEHora;
	}
	public void setDataEHora(LocalDateTime dataEHora) {
		this.dataEHora = dataEHora;
	}
	public double getValorTotal() {
		return valorTotal;
	}
	public void setValorTotal(double valorTotal) {
		this.valorTotal = valorTotal;
	}
	
}
