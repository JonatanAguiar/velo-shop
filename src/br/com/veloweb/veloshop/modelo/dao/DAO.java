package br.com.veloweb.veloshop.modelo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.veloweb.flyweb.connection.ConnectionFactory;
import br.com.veloweb.veloshop.modelo.Pedido;
import br.com.veloweb.veloshop.modelo.Produto;

public class DAO<E> {

	public E save(E obj, Integer objId) {
		EntityManager em = new ConnectionFactory().getConnection();

		try {
			em.getTransaction().begin();
			if (objId == null) {
				em.persist(obj);
			} else {
				em.merge(obj);
			}
			em.getTransaction().commit();

		} catch (Exception e) {
			System.err.println(e);
			em.getTransaction().rollback();
		} finally {
			em.close();
		}
		return obj;
	}

	public E findById(Integer id, Class<E> x) {
		EntityManager em = new ConnectionFactory().getConnection();

		E obj = null;

		try {
			obj = em.find(x, id);
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			em.close();
		}

		return obj;
	}

	public <T> List<T> findAll(String nome) {
		EntityManager em = new ConnectionFactory().getConnection();
		List<T> objs = null;

		try {
			objs = em.createQuery("from " + nome + " a").getResultList();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			em.close();
		}

		return objs;
	}

	public E remove(Integer id, Class<E> x) {
		EntityManager em = new ConnectionFactory().getConnection();
		E obj = null;

		try {
			obj = em.find(x, id);
			em.getTransaction().begin();
			em.remove(obj);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.err.println(e);
			em.getTransaction().rollback();
		} finally {
			em.close();
		}

		return obj;
	}

	public E findByCPF(String cpf) {
		EntityManager em = new ConnectionFactory().getConnection();
		
		E obj = null;

		try {
			obj = (E) em.createQuery("from Cliente where cpf = " + cpf).getSingleResult();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			em.close();
		}

		return obj;
	}
	
	public <T> List<T> findPedidosDoCliente(Integer id) {
		EntityManager em = new ConnectionFactory().getConnection();
		
		List<T> objs = null;;

		try {
			objs = (List<T>) em.createQuery("from Pedido where cliente = " + id).getResultList();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			em.close();
		}

		return objs;
	}
	
	
	public Pedido findByIdComProdutos(int i) {
		EntityManager em = new ConnectionFactory().getConnection();
        try {
            Query byIdQuery = em.createQuery("FROM Pedido as p JOIN FETCH p.itensDoPedido WHERE p.id = :id");
            byIdQuery.setParameter("id", i);
            return (Pedido) byIdQuery.getSingleResult();
        } catch (Exception e) {
            throw e;
        } finally {
            em.close();
        }
	}

}




