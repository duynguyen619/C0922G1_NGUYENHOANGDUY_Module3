package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProduct;

import java.util.List;

public class ProductService implements IProduct {
    private IProductRepository iProductRepository=new ProductRepository();


    @Override
    public List<Product> findAll() {
        return iProductRepository.findAll();
    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public boolean save(Product product) {
        return iProductRepository.save(product);
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
