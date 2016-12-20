package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.CarService;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.LoggerWrapper;

import java.beans.PropertyEditorSupport;
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
    public String carAdd(Model model){
        model.addAttribute("car", new Car());
        return "carPersonInventory";
    }


    @RequestMapping(value = "/admin/carPersonInventory/editPersonsInCar/{carId}")
    public String editPersonInCar(@PathVariable int carId, Model model){
        Car car = carService.getCarById(carId);
        model.addAttribute("car", car);
        return "carPersonInventory";
    }


    @RequestMapping(value = "/admin/carPersonInventory/editPersonsInCar",method = RequestMethod.POST)
    public String editPersonInCarPost(@ModelAttribute("car") Car car, BindingResult result){
        try {

            carService.editCar(car);
//            carPersonService.editPersonInCar(car);
            LOG.info("save car with characteristic: {}" + car);
        } catch (Exception e) {
            e.printStackTrace();
            LOG.info("Exception occur in {}" + e);
        }
        return "redirect:/admin/carPersonInventory";
    }






    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(Car.class, "car", new PropertyEditorSupport() {

            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                Integer carId = Integer.parseInt(text);
                Car car = carService.getCarById(carId);
                setValue(car);
            }

            @Override
            public String getAsText() {
                Object value = getValue();
                if (value != null) {
                    Car car = (Car) value;
                    return car.getName();
                }

                return null;
            }
        });


        binder.registerCustomEditor(List.class, "personsInCar", new CustomCollectionEditor(List.class) {

            protected Object convertElement(Object element) {
                if (element != null) {
                    Integer personId = Integer.parseInt(element.toString());
                    Person person = personService.getPersonById(personId);
                    return person;
                }
                return null;
            }
        });


    }


}


