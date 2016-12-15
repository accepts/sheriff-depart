package ua.kiev.police.dao;

import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;

public interface CarPersonDao {

    void editPersonInCar(Car car);
    void removePersonFromCar(Person person, Car car);
    int getCarCapacity(int carId);
    boolean isInCar(int personId);

}
