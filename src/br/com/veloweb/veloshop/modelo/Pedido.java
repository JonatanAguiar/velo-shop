package br.com.veloweb.veloshop.modelo;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.google.gson.Gson;

@Entity
public class Pedido {
	
	@Id
	@GeneratedValue
	private int id;
	@ManyToOne
	private Cliente cliente;
	@ManyToMany
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
	public String toJson() {
		return new Gson().toJson(this);
	}
}
