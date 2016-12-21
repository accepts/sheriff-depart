package ua.kiev.police.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.CarService;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.LoggerWrapper;

import java.util.List;


@Controller
public class PersonController {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(PersonController.class);

    @Autowired
    private PersonService personService;

    @Autowired
    private CarService carService;


    @RequestMapping("/persons")
    public String getPersons(Model model){
        List<Person> personList = personService.getAllPersons();
        model.addAttribute("personList", personList);

        List<Car> carList = carService.getAllCars();
        model.addAttribute("carList", carList);
        return "persons";
    }

    @RequestMapping("/personView/{personId}")
    public String personView(@PathVariable int personId, Model model){
        Person person = personService.getPersonById(personId);
        model.addAttribute(person);
        return "personView";
    }
}
