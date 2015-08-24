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

	public void adicionarClientes(Cliente Cliente) {
		entityManager.persist(Cliente);
	}

}
