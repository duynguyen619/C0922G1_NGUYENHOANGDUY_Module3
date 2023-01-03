package service.impl;

import Model.Product;

import java.util.List;

public interface IProduct {
    List<Product> findAdd();

    boolean save(Product product);

    Product findById(int id);

    void upadate(int id, Product product);

    void remove(int id);
}
