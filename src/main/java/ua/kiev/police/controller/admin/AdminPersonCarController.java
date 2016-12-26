package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.CarService;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.CarInitBinderWrapper;
import ua.kiev.police.util.LoggerWrapper;
import ua.kiev.police.util.PersonListInitBinderWrapper;

import java.util.List;

@Controller
public class AdminPersonCarController {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(AdminPersonCarController.class);

    @Autowired
    private PersonService personService;

    @Autowired
    private CarService carService;

    @ModelAttribute("persons")
    public List<Person> getAllPersons() {
        return personService.getAllPersons();
    }

    @ModelAttribute("carList")
    public List<Car> getAllCars() {
        return carService.getAllCars();
    }


    @RequestMapping(value = "/admin/carPersonInventory")
    public String carAdd(Model model) {
        model.addAttribute("car", new Car());
        return "carPersonInventory";
    }


    @RequestMapping(value = "/admin/carPersonInventory/editPersonsInCar/{carId}")
    public String editPersonInCar(@PathVariable int carId, Model model) {
        Car car = carService.getCarById(carId);
        model.addAttribute("car", car);
        return "carPersonInventory";
    }


    @RequestMapping(value = "/admin/carPersonInventory/editPersonsInCar", method = RequestMethod.POST)
    public String editPersonInCarPost(@ModelAttribute("car") Car car, BindingResult result) {
        try {
            carService.editCar(car);
            LOG.info("save car with characteristic: {}" + car);
        } catch (Exception e) {
            e.printStackTrace();
            LOG.info("Exception occur in {}" + e);
        }
        return "redirect:/admin/carPersonInventory";
    }


    //    Exception handler methods
    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
    public void handleClientErrors(Exception e) {
        LOG.error("Exception occur in {}: " + e);
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal server error!")
    public void handleServerErrors(Exception e) {
        LOG.error("Exception occur in {}: " + e);
    }



    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(Car.class, "car", new CarInitBinderWrapper(carService));
        binder.registerCustomEditor(List.class, "personsInCar", new PersonListInitBinderWrapper(List.class, personService));
    }



}


