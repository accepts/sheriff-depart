package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.CarService;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.LoggerWrapper;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.beans.PropertyEditorSupport;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class AdminCarController {

    private Path path;

    protected static final LoggerWrapper LOG = LoggerWrapper.get(AdminCarController.class);


    @Autowired
    private CarService carService;

    @Autowired
    private PersonService personService;


    @ModelAttribute("persons")
    public List<Person> getAllPersons() {
        return personService.getAllPersons();
    }



    @RequestMapping("/admin/carInventory")
    public String carInventory(Model model){
        List<Car> carList = carService.getAllCars();
        model.addAttribute("carList", carList);
        return "carInventory";
    }


    @RequestMapping("/admin/carInventory/addCar")
    public String addCar(Model model){
        Car car = new Car();
        model.addAttribute("car", car);
        return "carAdd";
    }

    @RequestMapping(value = "/admin/carInventory/addCar", method = RequestMethod.POST)
    public String addCarPost(@Valid @ModelAttribute("car") Car car,
                             BindingResult result, HttpServletRequest request){
        if (result.hasErrors()){
            return "carAdd";
        }

        carService.addCar(car);

        MultipartFile carImage = car.getCarImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_cars\\" + car.getCarId() + ".png");
        if (carImage != null && !carImage.isEmpty()) {
            try {
                carImage.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
                //LOG.info("Error occur when try to save file to path {}" + path.toString());
                throw new RuntimeException("Car image saving failed!", e);
            }
        }
        return "redirect:/admin/carInventory/";
    }

    @RequestMapping("/admin/carInventory/deleteCar/{carId}")
    public String deleteCar(@PathVariable int carId, Model model, HttpServletRequest request){
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_cars\\" + carId + ".png");
        if (Files.exists(path)){
            try {
                Files.delete(path);
            } catch (IOException e) {
                //LOG.info("Error occur when try to delete file with path {}" + path.toString());
                e.printStackTrace();
            }
        }
        carService.deleteCar(carId);
        return "redirect:/admin/carInventory";
    }


    @RequestMapping("/admin/carInventory/editCar/{carId}")
    public String editCar(@PathVariable("carId") int carId, Model model){
        Car car = carService.getCarById(carId);
        model.addAttribute(car);
        //model.addAttribute("personInParticularCar", car.getPersonsInCar());
        return "carEdit";
    }


    @RequestMapping(value = "/admin/carInventory/editCar/", method = RequestMethod.POST)
    public String editCar(@Valid @ModelAttribute("car") Car car,
                          BindingResult result, Model model, HttpServletRequest request){
        if (result.hasErrors()){
            System.out.println("<----Result HAS ERROR: " + result.getAllErrors());
            return "carEdit";
        }

        System.out.println("====================================");

        MultipartFile carImage = car.getCarImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_cars\\" + car.getCarId() + ".png");
        System.out.println("<----Path: " + path);

        if (carImage != null && !carImage.isEmpty()) {
            try {
                carImage.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
                //LOG.info("Error occur when edit car object {}");
                throw new RuntimeException("Car image saving failed!", e);
            }
        }
        carService.editCar(car);
        return "redirect:/admin/carInventory/";
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

/*

    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(List.class, "personsInCar", new CustomCollectionEditor(List.class) {

            protected Object convertElement(Object element) {
                if (element != null) {
                    if (element instanceof List){
                        System.out.println("<----IB: LIST");
                    }
                    if (element instanceof Person){
                        System.out.println("<-----IB: Person");
                    }
                    System.out.println("<<<------InitBinder-element.toString------: " + element.toString());
                    System.out.println("<------------------------" + element.getClass());
//                    List<Person> personsInCar = null;
//                    try {
//                        personsInCar = (List<Person>) element;
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                        LOG.info("<-----LOG----error occur in initBinder-----");
//                        return null;
//                    }
//                    return  personsInCar;


                    Integer personId = Integer.parseInt(element.toString());
                    Person person = personService.getPersonById(personId);
                    return person;
                }
                return null;
            }
        });


    }
    */

    /*

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

     */




}
