package service.impl;

import Model.Product;
import service.IProduct;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProduct {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Iphone 13 Pro Max", 200000.0, "SmartPhone", "Apple"));
    }


    public List<Product> findAll() {
        return productList;
    }

    @Override
    public boolean save(Product product) {
        return productList.add(product);
    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public void upadate(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }
}
