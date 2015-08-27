package br.com.edulemos.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cliente")
public class Cliente {
	
	@Id
	@GeneratedValue
	private long id;

	@Column(name = "nome", nullable = false, length = 128)
	private String nome;
	
	@Column(name = "telefone", nullable = false, length = 14)
	private String telefone;

	@OneToOne(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name = "fk_endereco")
	private Endereco endereco;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

}
