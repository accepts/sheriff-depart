package ua.kiev.police.dao;

import ua.kiev.police.model.Car;

import java.util.List;

public interface CarDao {
    void addCar(Car car);
    Car getCarById(int id);
    List<Car> getAllCars();
    void deleteCar(int id);
    void editCar(Car car);
}
