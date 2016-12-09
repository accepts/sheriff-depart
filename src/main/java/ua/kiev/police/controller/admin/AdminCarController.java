package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.Car;
import ua.kiev.police.service.CarService;
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
public class AdminCarController {

    private Path path;

    protected static final LoggerWrapper LOG = LoggerWrapper.get(AdminCarController.class);


    @Autowired
    private CarService carService;


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
                LOG.info("Error occur when try to save file to path {}" + path.toString());
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
                LOG.info("Error occur when try to delete file with path {}" + path.toString());
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
        return "carEdit";
    }


    @RequestMapping(value = "/admin/carInventory/editCar/", method = RequestMethod.POST)
    public String editCar(@Valid @ModelAttribute("car") Car car, BindingResult result, Model model, HttpServletRequest request){
        if (result.hasErrors()){
            return "carEdit";
        }
        MultipartFile carImage = car.getCarImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_cars\\" + car.getCarId() + ".png");
        if (carImage != null && !carImage.isEmpty()) {
            try {
                carImage.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
                LOG.info("Error occur when edit car object {}");
                throw new RuntimeException("Car image saving failed!", e);
            }
        }
        carService.editCar(car);
        return "redirect:/admin/carInventory/";
    }



    /*



     */




}
