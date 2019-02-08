package br.com.ifpe.estoque.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.estoque.model.Usuario;
import br.com.ifpe.estoque.model.UsuarioDao;

@Controller
public class UsuarioController {

	@RequestMapping("/usuario/add")
	public String adicionarUsuario() {
		return "usuario/incluirUsuario";
	}

	@RequestMapping("/usuario/save")
	public String save(Usuario usuario) {
		UsuarioDao dao = new UsuarioDao();
		dao.salvar(usuario);
		return "usuario/incluirUsuarioSucesso";
	}



}
