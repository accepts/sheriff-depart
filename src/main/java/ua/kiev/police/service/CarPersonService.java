package ua.kiev.police.service;

import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;

public interface CarPersonService {
    void editPersonInCar(Car car);
    void removePersonFromCar(Person person, Car car);
    int getCarCapacity(int carId);
    boolean isInCar(int personId);
}
