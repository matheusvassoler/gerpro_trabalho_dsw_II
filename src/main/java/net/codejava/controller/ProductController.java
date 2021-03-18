package net.codejava.controller;

import net.codejava.model.Product;
import net.codejava.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProductController {

	@Autowired
	private IProductService productService;
	
	@RequestMapping("/")
	public String home() {
		System.out.println("Going home...");
		return "index";
	}

	@RequestMapping(value = "/merchandise-table", method = RequestMethod.GET)
	public String showRegisterProductPage(ModelMap model) {
		Product product = new Product();
		model.put("products", productService.getProducts());
		model.put("product", product);
		return "merchandise-table";
	}

	@GetMapping("/add-merchandise")
	public String showAddMerchandisePage(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "addMerchandise";
	}

	@PostMapping("/register-product")
	public String saveProduct(@ModelAttribute("product") Product product) {
		product.setId(0L);
		System.out.println(product);
		productService.save(product);
		return "redirect:/merchandise-table";
	}

	@PostMapping("/delete-product")
	public String deleteProduct(@ModelAttribute("product") Product product) {
		productService.delete(product.getId().longValue());
		return "redirect:/merchandise-table";
	}
}
