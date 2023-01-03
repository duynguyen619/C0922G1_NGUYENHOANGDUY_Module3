package repository;

import Model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();
    Product findById(int id);
    boolean save(Product product);
    boolean delete(int id);
}
