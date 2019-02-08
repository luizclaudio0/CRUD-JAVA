package br.com.ifpe.estoque.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.ifpe.estoque.model.Produto;
import br.com.ifpe.estoque.model.ProdutoDao;
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

	@RequestMapping("/usuario/list")
	public String listarUsuario(Model model) {
		UsuarioDao dao = new UsuarioDao();
		List<Usuario> listaUsuario = dao.listar(null);
		model.addAttribute("listaUsuario", listaUsuario);
		return "usuario/listarUsuario";

	}

	@RequestMapping("/usuario/filter")
	public String filtrarUsuario(Usuario usuario, Model model) {
		UsuarioDao dao = new UsuarioDao();
		List<Usuario> listaUsuario = dao.listar(usuario);
		model.addAttribute("listaUsuario", listaUsuario);
		return "usuario/listarUsuario";
	}

	@RequestMapping("/usuario/edit")
	public String edit(@RequestParam("id") Integer id, Model model) {
		UsuarioDao dao = new UsuarioDao();
		Usuario usuario = dao.buscarPorId(id);
		model.addAttribute("usuario", usuario);
		return "usuario/alterarUsuario";
	}

	@RequestMapping("/usuario/update")
	public String update(Usuario usuario, Model model) {
		UsuarioDao dao = new UsuarioDao();
		dao.alterar(usuario);
		model.addAttribute("mensagem", "O usuario Alterado com Sucesso !");
		return "forward:list";
	}

	@RequestMapping("/usuario/delete")
	public String delete(@RequestParam("id") Integer id, Model model) {
		UsuarioDao dao = new UsuarioDao();
		dao.remover(id);
		model.addAttribute("mensagem", "usuario Removido com Sucesso");
		return "forward:list";
	}

}
