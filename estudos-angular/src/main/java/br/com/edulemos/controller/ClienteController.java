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
import br.com.edulemos.model.Cliente;
import br.com.edulemos.service.ClientesService;

@Controller
public class ClienteController {

	@Inject
	Result result;
	
	@Inject
	ClientesService service;

	@Path(value = "/listarClientes")
	public void listarClientes() {
		List<Cliente> listAllContatos = service.listarClientes();
		result.use(json()).withoutRoot().from(listAllContatos).recursive().serialize();
	}
	
	@Post
	@Path(value = "/adicionarCliente")
	@Consumes(value = "application/json", options = WithoutRoot.class)
	public void adicionarCliente(Cliente cliente) {
		service.adicionarClientes(cliente);
		result.use(json()).withoutRoot().from("Contato Adicionado.").serialize();
	}

}