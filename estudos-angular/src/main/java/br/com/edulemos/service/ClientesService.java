package br.com.edulemos.service;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.edulemos.model.Cliente;

public class ClientesService {

	private final EntityManager entityManager;

	protected ClientesService() {
		this(null);
	}

	@Inject
	public ClientesService(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public List<Cliente> listarClientes() {
		return entityManager.createQuery("select c from Cliente c", Cliente.class).getResultList();
	}

	public void adicionarClientes(Cliente cliente) {
		entityManager.persist(cliente);
	}

	public Cliente getCliente(Long id) {
		return entityManager.createQuery("select c from Cliente c where c.id = :id", Cliente.class)
				.setParameter("id",id)
				.getSingleResult();
	}

	public void alterarCliente(Cliente cliente) {
		entityManager.merge(cliente);
	}
	
	public void removerCliente(Cliente cliente) {
		entityManager.remove(cliente);
	}

}
