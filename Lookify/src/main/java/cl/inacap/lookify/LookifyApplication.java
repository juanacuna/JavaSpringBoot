package cl.inacap.lookify;

//import java.util.concurrent.TimeUnit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.http.CacheControl;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@SpringBootApplication
public class LookifyApplication {

	public static void main(String[] args) {
		SpringApplication.run(LookifyApplication.class, args);
	}
	
	/*
	 * public void addResourceHandlers(ResourceHandlerRegistry registry) {
	 * 
	 * // Register resource handler for images
	 * registry.addResourceHandler("/images/**").addResourceLocations(
	 * "/WEB-INF/images/") .setCacheControl(CacheControl.maxAge(2,
	 * TimeUnit.HOURS).cachePublic()); }
	 */

}
