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



}

