package net.codejava.service;

import net.codejava.model.Product;
import net.codejava.repository.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	private Repository repository;

	@Override
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	@Override
	public void save(Product product) {
		repository.save(product);
	}

}
