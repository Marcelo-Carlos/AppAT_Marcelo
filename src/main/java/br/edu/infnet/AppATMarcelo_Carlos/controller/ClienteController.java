	package br.edu.infnet.AppATMarcelo_Carlos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.AppATMarcelo_Carlos.model.negocio.Cliente;
import br.edu.infnet.AppATMarcelo_Carlos.model.negocio.Usuario;
import br.edu.infnet.AppATMarcelo_Carlos.model.service.ClienteService;
import br.edu.infnet.AppATMarcelo_Carlos.model.service.UsuarioService;


@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService clienteService;
	@Autowired
	private UsuarioService usuarioService;
	
	
	//=========================================================================================
	
	@GetMapping(value = "/cliente")
	public String showCliente(Model model, @SessionAttribute("user") Usuario usuario){
		
		
		model.addAttribute("lista", clienteService.obterLista(usuario));
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		return "cliente/detalhe";
	}
	
	//=========================================================================================
	
	@PostMapping(value = "/cliente/incluir")
	public String incluir(Cliente cliente, @SessionAttribute("user") Usuario usuario) {		
		
		cliente.setUsuario(usuario);
		clienteService.incluir(cliente);
		return "redirect:/cliente";
	}
	
	//=========================================================================================
	
	@GetMapping(value = "/cliente/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id, Usuario usuario) {
		
		try {
			clienteService.excluir(id);			
		} catch (Exception e) {
			model.addAttribute("msg", "Não foi possivel excluir o cliente: " + e.getMessage());
			return showCliente(model, usuario);
		}
		
		return "redirect:/cliente";
		
	}
}
