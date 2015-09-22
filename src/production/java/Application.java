import java.math.BigDecimal;
import java.util.Date;
import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.kosign.wecafe.entities.Category;
import com.kosign.wecafe.entities.Product;
import com.kosign.wecafe.util.HibernateUtil;

public class Application {

	public static void main(String[] args) {
		
		// Configuration 
		Configuration configuration = new Configuration();
		
		configuration.addAnnotatedClass(Product.class);
		configuration.addAnnotatedClass(Category.class);
		
		configuration.setProperties(new Properties(){
			{
				put("hibernate.connection.username","postgres");
				put("hibernate.connection.password","123456");
				put("hibernate.connection.driver_class","org.postgresql.Driver");
				put("hibernate.connection.url","jdbc:postgresql://localhost:5432/WeCafe");
			}
			
		});
		
		// Building SessionFactory 
		SessionFactory sessionFactory = configuration
				.buildSessionFactory(new StandardServiceRegistryBuilder(
						).applySettings(configuration.getProperties()).build());
		
		// Obtain Session and call Persistence Methods 
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Product product = new Product();
		product.setProductName("BIG COCA COLA");
		product.setQuantity(10L);
		product.setUnitPrice(new BigDecimal(1500));
		product.setCostPrice(new BigDecimal(1300));
		product.setSalePrice(new BigDecimal(1500));
		//product.setCategoryId(1L);
		product.setImage("BIG COCA COLA");		
		
		Category category = new Category();
		category.setCatName("Drink");
		category.setCreatedDate(new Date());
		category.setLastUpdatedDate(new Date());
		//Category category = (Category)session.get(Category.class, 1L);	
		
		//product.setCategory(category);
		category.getProducts().add(product);
		
		session.save(category);
		//session.save(product);
		
		session.getTransaction().commit();
		session.close();
	}
	
	/*public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		
		session.close();
	}*/
}
