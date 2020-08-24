package cl.inacap.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import cl.inacap.lookify.models.Cancion;
import cl.inacap.lookify.repositories.LookifyRepository;

@Service
public class LookifyService {

	private final LookifyRepository lookifyRepository;
	
	public LookifyService(LookifyRepository lookifyRepository) {
		this.lookifyRepository=lookifyRepository;
	}
	
	public List<Cancion> allCanciones(){
		return this.lookifyRepository.findAll();
	}
	
	public Cancion createCancion(Cancion c) {
		return lookifyRepository.save(c);
	}
	
	public Cancion findCancion(Long id) {
		Optional<Cancion> opCancion = lookifyRepository.findById(id);
		if(opCancion.isPresent()) {
			return opCancion.get();
		}else {
			return null;
		}
	}

	public void delCancion(Long id) {
		lookifyRepository.deleteById(id);		
	}

	public List<Cancion> topTen() {
		return this.lookifyRepository.findTop10ByOrderByClasificacionDesc();
	}
	
	public List<Cancion> buscarArtista(String artista){
		return this.lookifyRepository.findByArtistaContaining(artista);
	}
	
	
}
