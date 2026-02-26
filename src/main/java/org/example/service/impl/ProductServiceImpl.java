package org.example.service.impl;

import org.example.domain.Product;
import org.example.repository.ProductRepository;
import org.example.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductRepository productRepository;


    public List<Product> getAllProducts(){
        return productRepository.getAllProducts();
    }

    public List<Product> getProductsByCategory(String category) {
        return productRepository.getProductsByCategory(category);
    }

    public Set<Product> getProductsByFilter(Map<String, List<String>>
                                                    filterParams) {
        return productRepository.getProductsByFilter(filterParams);
    }

   public Product getProductById(String productId) {
        return productRepository.getProductById(productId);
    }

    public void addProduct(Product product) {
        productRepository.addProduct(product);
    }
}
