package ua.kiev.police.service;

import ua.kiev.police.model.Car;

import java.util.List;

public interface CarService {
    void addCar(Car car);
    Car getCarById(int id);
    List<Car> getAllCars();
    void deleteCar(int id);
    void editCar(Car car);
}
