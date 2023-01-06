package repository.impl;

import Model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Iphone 13 Pro Max", 200000.0, "SmartPhone", "Apple"));
        productList.add(new Product(2, "Iphone 14 Pro Max", 3000000.0, "SmartPhone", "Apple"));
    }

    public List<Product> findAll() {
        return productList;
    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public boolean save(Product product) {
        return productList.add(product);
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
