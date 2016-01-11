package br.com.ohgestao.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import br.com.ohsoftwarescore.dao.UsuarioDAO;
import br.com.ohsoftwarescore.model.Usuario;

@Controller

@RequestMapping("/usuario")
public class UsuarioController {

	@Autowired
	private UsuarioDAO daoUsuario;

	@RequestMapping(value = "/cadastro", method = RequestMethod.GET)
	public String CadastroUsuario(ModelMap modelMap) {

		modelMap.addAttribute("trans", "cad");
		modelMap.addAttribute("usuario", new Usuario());

		return "cadUsuario";
	}

	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public String CadastrarUsuario(Usuario usuario) {

		daoUsuario.salvar(usuario);

		return "redirect:/usuario/listar";
	}

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String ListarUsuario(ModelMap modelMap) {

		modelMap.addAttribute("usuarios", daoUsuario.listar());

		return "listUsuario";
	}

	// Carrega a Usuario para ser editada, recebe o id do Usuario
	@Transactional
	@RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
	public String EditarUsuario(ModelMap modelMap, @PathVariable Long id) {

		modelMap.addAttribute("usuario", daoUsuario.buscaPorId(id));
		modelMap.addAttribute("trans", "edit");

		return "cadUsuario";

	}

	// Edita Usuario, recebe o id do Usuario a ser editado
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String UpdateLoja(Usuario usuario,  @PathVariable Long id,
			HttpServletRequest request) {

		usuario.setId(id);
		daoUsuario.update(usuario);

		return "redirect:/usuario/listar";

	}

	
	//Deleta Usuario, recebe o id do Usuario a ser deletado
	@RequestMapping(value ="/deletar/{id}", method = RequestMethod.POST)
	@ResponseBody
	public String deletaLoja(ModelMap modelMap, @PathVariable Long id ){

		daoUsuario.remove(id);
				
		    return "ok";
		  }

}
