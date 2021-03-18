package net.codejava.repository;

import net.codejava.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Repository extends JpaRepository<Product, Long> {

}
