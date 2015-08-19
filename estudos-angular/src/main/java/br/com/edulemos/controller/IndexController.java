package br.com.edulemos.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class IndexController {

	@Inject
	Result result;

	@Path("/")
	public void index() {
	}

	@Get
	@Path("/menu/{page}")
	public void menu(String page) {
		result.forwardTo("/jsp/" + page + ".jsp");
	}

	@Path(value = "/getPessoas")
	public void getPessoas() {

//		List<Contato> pessoas = new ArrayList<Contato>();
//		pessoas.add(new Contato("edu", 20));
//		pessoas.add(new Contato("ana", 30));
//		pessoas.add(new Contato("maria", 40));
//		pessoas.add(new Contato("joao", 50));
//		result.use(json()).from(pessoas).serialize();

	}

}