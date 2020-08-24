package cl.inacap.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import cl.inacap.lookify.models.Cancion;

@Repository
public interface LookifyRepository extends CrudRepository<Cancion, Long>{
	
	// Recupera todas las canciones
	List<Cancion> findAll();
	
	//Recupera canciones por titulo
	List<Cancion> findByTituloContaining(String search);
	
	//Recupera canciones por artista
	List<Cancion> findByArtistaContaining(String search);
	
	// Elimina canciones por titulo que empiecen por:
	Long deleteByTituloStartingWith(String search);
	
	// Recupera los primeros 10 con mayor clasificacion
	List<Cancion> findTop10ByClasificacion(int search);
	
	List<Cancion>findTop10ByOrderByClasificacionDesc();
}
