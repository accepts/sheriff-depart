package ua.kiev.police.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.kiev.police.dao.PersonDao;
import ua.kiev.police.model.PatrolCar;
import ua.kiev.police.model.Person;
import ua.kiev.police.util.LoggerWrapper;

import java.util.List;

@Controller
@RequestMapping("/")
public class HelloController {

	protected static final LoggerWrapper LOG = LoggerWrapper.get(HelloController.class);

	private PersonDao personDao = new PersonDao();


	@RequestMapping(method = RequestMethod.GET)
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


	@RequestMapping("/test")
	public String testingModel(Model model){
		List<Person> personList = personDao.getPersonList();
		model.addAttribute("personList", personList);

		PatrolCar patrolCar = personDao.getPatrolCar();
		model.addAttribute("patrolCar", patrolCar);

		Person person2 = personList.get(2);
		model.addAttribute("person2", person2);

		Person person1 = personList.get(1);
		model.addAttribute("person1", person1);


		LOG.info("Controller /test method is used: ", patrolCar);
		return "testingModel";
	}


	@RequestMapping("/person")
	public String personView(Model model){

		return "personView";
	}



}