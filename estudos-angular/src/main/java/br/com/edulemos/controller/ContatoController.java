package br.com.edulemos.controller;

import static br.com.caelum.vraptor.view.Results.json;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.serialization.gson.WithoutRoot;
import br.com.edulemos.model.Contato;
import br.com.edulemos.model.Operadora;
import br.com.edulemos.service.ContatoService;

@Controller
public class ContatoController {

	@Inject
	Result result;
	
	@Inject
	ContatoService service;

	@Path(value = "/getContatos")
	public void listContatos() {
		List<Contato> listAllContatos = service.listAllContatos();
		result.use(json()).withoutRoot().from(listAllContatos).recursive().serialize();
	}
	
	@Path(value = "/getOperadoras")
	public void listOperadoras() {
		List<Operadora> listAllContatos = service.listAllOperadoras();
		result.use(json()).withoutRoot().from(listAllContatos).serialize();
	}
	
	@Post
	@Path(value = "/addContato")
	@Consumes(value = "application/json", options = WithoutRoot.class)
	public void addContato(Contato contato) {
		service.addContato(contato);
		result.use(json()).withoutRoot().from("Contato Adicionado.").serialize();
	}

}