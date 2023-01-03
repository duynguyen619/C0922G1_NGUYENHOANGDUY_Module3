package service;

import Model.Product;

import java.util.List;

public interface IProduct {
    List<Product> findAll();

    boolean save(Product product);

    Product findById(int id);

    void upadate(int id, Product product);

    void remove(int id);

}
