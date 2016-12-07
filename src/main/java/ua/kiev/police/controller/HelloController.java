package ua.kiev.police.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.kiev.police.dao.PersonDao;
import ua.kiev.police.model.Person;
import ua.kiev.police.util.LoggerWrapper;

import java.util.List;

@Controller
public class HelloController {

	protected static final LoggerWrapper LOG = LoggerWrapper.get(HelloController.class);

	@Autowired
	private PersonDao personDao;


	/*

	    }

    @RequestMapping("/productList")
    public String getProducts(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);
        return "productList";
    }

    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
    }
	 */

	@RequestMapping("/")
	public String home() {
		return "home";
	}


	@RequestMapping("/persons")
	public String getPersons(Model model){
		List<Person> personList = personDao.getAllPersons();
		model.addAttribute("personList", personList);
		return "persons";
	}


	@RequestMapping("/personView/{personId}")
	public String personView(@PathVariable String personId, Model model){
		Person person = personDao.getPersonById(personId);
		model.addAttribute(person);
		return "personView";
	}


}












	/*@RequestMapping("/")
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello Police Department!");

		List<Person> personList = personDao.getPersonList();
		model.addAttribute("personList", personList);

		PatrolCar patrolCar = personDao.getPatrolCar();
		model.addAttribute("patrolCar", patrolCar);

		Person person2 = personList.get(2);
		model.addAttribute("person2", person2);

		Person person1 = personList.get(1);
		model.addAttribute("person1", person1);

		LOG.info("Controller /test method is used: ", patrolCar);
		return "home";
	}
*/




/*		List<Person> personList = personDao.getPersonList();

		Person person = new Person();

		for (Person p : personList) {
			if (p.getPersonId().equals(personId)){
				person = p;
			} else {
				//LOG.info("Person NOt found! ");
			}
		}*/



/*	@RequestMapping("/test")
	public String testingModel(Model model){
		List<Person> personList = personDao.getPersonList();
		model.addAttribute("personList", personList);

		//PatrolCar patrolCar = personDao.getPatrolCar();
		//model.addAttribute("patrolCar", patrolCar);

		Person person2 = personList.get(2);
		model.addAttribute("person2", person2);

		Person person1 = personList.get(1);
		model.addAttribute("person1", person1);


		//LOG.info("Controller /test method is used: ", patrolCar);
		return "testingModel";
	}*/



