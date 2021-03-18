package net.codejava.service;

import net.codejava.model.Product;

import java.util.List;

public interface IProductService {
	
	List<Product> getProducts();

	void save(Product product);
}
