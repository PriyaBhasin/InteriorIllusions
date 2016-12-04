package interiorillusions.dao.impl;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import interiorillusions.model.Product;
import interiorillusions.dao.ProductDao;

@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired 
	SessionFactory sessionFactory;
	public void addProduct(Product p){
		//insert product
		Session session=sessionFactory.openSession();
		session.save(p);//insert 
	}
	
	public ArrayList<Product> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		return (ArrayList<Product>)session.createQuery("from Product").list();
	}
	public Product getProduct(int id){
		Session session=sessionFactory.getCurrentSession();
		Product p=(Product)session.get(Product.class ,id);
		return p;
	}
	
	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		//Product p=(Product)session.get(Product.class ,id);
		p.setCategory(p.getCategory());
		p.setDescription(p.getDescription());
		p.setImage(p.getImage());
		p.setPrice(p.getPrice());
		session.saveOrUpdate(p);
	}

	public void deleteProudct(Product p) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(p);
	}
}
