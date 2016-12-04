package interiorillusions.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import interiorillusions.model.Product;
import interiorillusions.dao.impl.ProductDaoImpl;

@Service
@Transactional
public class ProductService {
	@Autowired
	ProductDaoImpl dao;
	
	public void addProduct(Product p){
		dao.addProduct(p);
	} 
	public Product getProduct(int id){
		return dao.getProduct(id);
	}
	public ArrayList<Product>getAllProducts(){
		return dao.getAllProducts();
	}
	public void updateProduct(Product p){
		dao.updateProduct(p);}

public void deleteProduct(Product p){
	dao.deleteProudct(p);}
}

