package br.com.edulemos.controller;

import static br.com.caelum.vraptor.view.Results.json;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.edulemos.model.Pessoa;

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

		List<Pessoa> pessoas = new ArrayList<Pessoa>();
		pessoas.add(new Pessoa("edu", 20));
		pessoas.add(new Pessoa("ana", 30));
		pessoas.add(new Pessoa("maria", 40));
		pessoas.add(new Pessoa("joao", 50));
		result.use(json()).withoutRoot().from(pessoas).serialize();

	}

}