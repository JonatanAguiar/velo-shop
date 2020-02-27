package br.com.veloweb.veloshop.modelo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.veloweb.flyweb.connection.ConnectionFactory;

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
}
