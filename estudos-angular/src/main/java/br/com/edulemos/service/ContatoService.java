package br.com.edulemos.service;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.edulemos.model.Contato;
import br.com.edulemos.model.Operadora;

public class ContatoService {

	private final EntityManager entityManager;

	protected ContatoService() {
		this(null);
	}

	@Inject
	public ContatoService(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public List<Contato> listAllContatos() {
		return entityManager.createQuery("select c from Contato c", Contato.class).getResultList();
	}

	public List<Operadora> listAllOperadoras() {
		return entityManager.createQuery("select o from Operadora o", Operadora.class).getResultList();
	}

	public void addContato(Contato contato) {
		entityManager.persist(contato);
	}

}
