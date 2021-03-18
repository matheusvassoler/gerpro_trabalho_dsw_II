package net.codejava;

import java.util.Arrays;
import java.util.List;

import net.codejava.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class MvcController {

	@Autowired
	private IProductService productService;
	
	@RequestMapping("/")
	public String home() {
		System.out.println("Going home...");
		return "index";
	}

	@RequestMapping(value = "/merchandise-table", method = RequestMethod.GET)
	public String showRegisterProductPage(ModelMap model) {
		model.put("products", productService.getProducts());
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
		product.setId(0);
		System.out.println(product);
		productService.save(product);
		return "redirect:/merchandise-table";
	}
	
	@GetMapping("/register")
	public String showForm(Model model) {
		User user = new User();
		user.setName("Nam Ha Minh");
		model.addAttribute("user", user);
		
		List<String> professionList = Arrays.asList("Developer", "Designer", "Tester", "Architect");
		model.addAttribute("professionList", professionList);
		
		return "register_form";
	}
	
	@PostMapping("/register")
	public String submitForm(@ModelAttribute("user") User user) {
		System.out.println(user);
		return "register_success";
	}
}
