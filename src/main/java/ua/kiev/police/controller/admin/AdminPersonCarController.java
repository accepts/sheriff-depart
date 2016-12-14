package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.CarPersonService;
import ua.kiev.police.service.CarService;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.LoggerWrapper;

import java.beans.PropertyEditorSupport;
import java.util.List;

@Controller
//@RequestMapping("/admin")
public class AdminPersonCarController {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(AdminPersonCarController.class);

    @Autowired
    private CarPersonService carPersonService;

    @Autowired
    private PersonService personService;

    @Autowired
    private CarService carService;

    @ModelAttribute("persons")
    public List<Person> getAllPersons() {
        return personService.getAllPersons();
    }

    @RequestMapping(value = "/admin/carPersonInventory")
    public String carAdd(Model model){
        model.addAttribute("carList", carService.getAllCars());
//        model.addAttribute("car", new Car());

        //model.addAttribute("persons", personService.getAllPersons());
        return "carPersonInventory";
    }


    @RequestMapping(value = "/admin/carPersonInventory/editPersonsInCar/{carId}")
    public String editPersonInCar(@PathVariable int carId,
                                 Model model){
        Car car = carService.getCarById(carId);
        model.addAttribute("car", car);
        return "";
    }





/*
    @RequestMapping(value = "/admin/addPersonInCar/{carId}/{personId}", method = RequestMethod.POST)
    public String addPersonToCar(@PathVariable int personId,
                                 @PathVariable int carId,
                                 Model model){

        carPersonService.addPersonInCar(personService.getPersonById(personId), carService.getCarById(carId));
        return "redirect:/carAdd";
    }
    */


    /*
        @RequestMapping(method = RequestMethod.GET, value = "/tasks/{action}/{id}")
       public String handleAction(@PathVariable Integer id, @PathVariable String action, Model model) {
           Task task = (Task) taskDao.getById(id);
           if (action.equalsIgnoreCase("edit")) {
               model.addAttribute("task", task);
               return "tasks";
           } else if (action.equalsIgnoreCase("delete")) {
               taskDao.delete(task);
           }
           return "redirect:/tasks";
       }

     */














    /*
        @RequestMapping(method = RequestMethod.POST)
    public String add(@ModelAttribute("project") Project project, BindingResult result) {
        projectValidator.validate(project, result);
        if (result.hasErrors())
            return "/projects";

        projectDao.update(project);
        return "redirect:/projects";

    }
     */


    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(Person.class, "person", new PropertyEditorSupport() {

            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                Integer personId = Integer.parseInt(text);
                Person person = personService.getPersonById(personId);
                setValue(person);
            }

            @Override
            public String getAsText() {
                Object value = getValue();
                if (value != null) {
                    Person person = (Person) value;
                    return person.getLastName();
                }

                return null;
            }


        });
    }




}
