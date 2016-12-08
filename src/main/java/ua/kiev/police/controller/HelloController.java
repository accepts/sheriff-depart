package ua.kiev.police.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.dao.PersonDao;
import ua.kiev.police.model.Person;
import ua.kiev.police.model.enums.Rank;
import ua.kiev.police.util.LoggerWrapper;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class HelloController {

	protected static final LoggerWrapper LOG = LoggerWrapper.get(HelloController.class);

	private Path path;

	@Autowired
	private PersonDao personDao;

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
	public String personView(@PathVariable int personId, Model model){
		Person person = personDao.getPersonById(personId);
		model.addAttribute(person);
		LOG.info("<--- personView added person into model: ", person);
		return "personView";
	}

	@RequestMapping("/admin")
	public String adminPage(){
		return "admin";
	}


	@RequestMapping("/admin/personInventory")
	public String personInventory(Model model){
		List<Person> personList = personDao.getAllPersons();
		model.addAttribute("personList", personList);
		return "personInventory";
	}


	@RequestMapping("/admin/personInventory/addPerson")
	public String addPerson(Model model){
		Person person = new Person();
		person.setRank(Rank.OFFICER);
		model.addAttribute("person", person);
		return "personAdd";
	}

	@RequestMapping(value = "/admin/personInventory/addPerson", method = RequestMethod.POST)
	public String addPersonPost(@Valid @ModelAttribute("person") Person person,
								BindingResult result, HttpServletRequest request){

		if (result.hasErrors()){
			return "personAdd";
		}

		personDao.addPerson(person);

		MultipartFile personImage = person.getPersonImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_person\\" + person.getPersonId() + ".png");
		if (personImage != null && !personImage.isEmpty()) {
			try {
				personImage.transferTo(new File(path.toString()));
			} catch (IOException e) {
				e.printStackTrace();
				LOG.info("Error occur when try to save file to path {}" + path.toString());
				throw new RuntimeException("Person image saving failed!", e);
			}
		}

		return "redirect:/admin/personInventory/";
	}


	@RequestMapping("/admin/personInventory/deletePerson/{personId}")
	public String deletePerson(@PathVariable int personId, Model model, HttpServletRequest request){

		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_person\\" + personId + ".png");

		if (Files.exists(path)){
			try {
				Files.delete(path);
			} catch (IOException e) {
				LOG.info("Error occur when try to delete file with path {}" + path.toString());
				e.printStackTrace();
			}
		}

		personDao.deletePerson(personId);
		return "redirect:/admin/personInventory";
	}



	@RequestMapping("/admin/personInventory/editPerson/{personId}")
	public String editPerson(@PathVariable("personId") int personId, Model model){
		Person person = personDao.getPersonById(personId);
		model.addAttribute(person);
		return "personEdit";
	}

	@RequestMapping(value = "/admin/personInventory/editPerson/", method = RequestMethod.POST)
	public String editPerson(@Valid @ModelAttribute("person") Person person, BindingResult result, Model model, HttpServletRequest request){
		if (result.hasErrors()){
			return "personEdit";
		}

		MultipartFile personImage = person.getPersonImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_person\\" + person.getPersonId() + ".png");

		if (personImage != null && !personImage.isEmpty()) {
			try {
				personImage.transferTo(new File(path.toString()));
			} catch (IOException e) {
				e.printStackTrace();
				LOG.info("Error occur when edit person object");
				throw new RuntimeException("Product image saving failed!", e);
			}
		}
		personDao.editPerson(person);
		return "redirect:/admin/personInventory/";
	}



}

/*


@RequestMapping(value = "/admin/productInventory/editProduct", method=RequestMethod.POST)
public String editProduct(@ModelAttribute("product") Product product, Model model, HttpServletRequest request){
    MultipartFile productImage = product.getProductImage();
    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
    path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId() + ".png");

    if (productImage != null && !productImage.isEmpty()) {
        try {
            productImage.transferTo(new File(path.toString()));
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Product image saving failed!", e);
        }
    }
    productDao.editProduct(product);
    return "redirect:/admin/productInventory";
}

 */