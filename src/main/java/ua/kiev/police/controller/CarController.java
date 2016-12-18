package ua.kiev.police.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.kiev.police.model.Car;
import ua.kiev.police.service.CarService;
import ua.kiev.police.util.LoggerWrapper;

import java.util.List;

@Controller
public class CarController {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(CarController.class);

    @Autowired
    private CarService carService;


    @RequestMapping("/cars")
    public String getCars(Model model){
        List<Car> carList = carService.getAllCars();
        model.addAttribute("carList", carList);
        return "cars";
    }

    @RequestMapping(value = "/carView/{carId}")
    public String carView(@PathVariable int carId, Model model){
        Car car = carService.getCarById(carId);
        model.addAttribute(car);
        return "carView";
    }


}
