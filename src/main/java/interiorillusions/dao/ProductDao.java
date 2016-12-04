package interiorillusions.dao;
import java.util.ArrayList;

import interiorillusions.model.Product;

public interface ProductDao {
	void addProduct(Product p);
	ArrayList<Product>getAllProducts();
	Product getProduct(int id);
	void updateProduct(Product p);
    void deleteProudct(Product p);
}
