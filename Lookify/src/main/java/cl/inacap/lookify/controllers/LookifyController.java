package cl.inacap.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.inacap.lookify.models.Cancion;
import cl.inacap.lookify.services.LookifyService;

@Controller
public class LookifyController {

	private final LookifyService lookifyService;
	
	public LookifyController(LookifyService lookifyService) {
		this.lookifyService = lookifyService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "/pages/index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Cancion> canciones = lookifyService.allCanciones();
		model.addAttribute("canciones", canciones);
		return "/pages/dashboard.jsp";
	}
	
	@RequestMapping("/song/new")
	public String newCancion(@ModelAttribute("cancion")Cancion cancion) {
		return "/pages/new.jsp";
	}
	
	@PostMapping("/song")
	public String create(@Valid @ModelAttribute("cancion")Cancion cancion, BindingResult result) {
		if (result.hasErrors()) {
			return "/song/new.jsp";
		}else {
			lookifyService.createCancion(cancion);
			return "redirect:/dashboard";
		}
	}
	
	@RequestMapping("/songs/{id}")
	public String verCancion(@PathVariable("id")Long id, Model model) {
		Cancion c = lookifyService.findCancion(id);
		if(c == null) {
			return "redirect:/dashboard";
		}
		model.addAttribute("cancion", c);
		return "/pages/view.jsp";
	}
	
	@DeleteMapping("/song/{id}")
	public String delCancion(@PathVariable("id")Long id) {
		lookifyService.delCancion(id);
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/search/topTen")
	public String topTen(Model model) {
		List<Cancion> topTen = lookifyService.topTen();
		model.addAttribute("topTen", topTen);
		return "/pages/topTen.jsp";
	}
	
	@PostMapping("/search")
	public String enviarArtista(@Valid
								@ModelAttribute("cancion") Cancion cancion,
								@RequestParam(value="artista") String artista) {
		return "redirect:/search/"+ artista;
	}
	
	@RequestMapping("/search/{artista}")
	public String buscarArtista(@Valid @PathVariable("artista") String artista, Model model) {
		List<Cancion> canciones = lookifyService.buscarArtista(artista);
		model.addAttribute("canciones", canciones);
		model.addAttribute("artista", artista);
		return "/pages/artista.jsp";
	}
	
}
