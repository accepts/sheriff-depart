package ua.kiev.police.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.kiev.police.dao.CarPersonDao;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.CarPersonService;

@Service
public class CarPersonServiceImpl implements CarPersonService {

    @Autowired
    private CarPersonDao carPersonDao;

    @Override
    public void addPersonInCar(Person person, Car car) {
        carPersonDao.addPersonInCar(person, car);
    }

    @Override
    public void removePersonFromCar(Person person, Car car) {

    }

    @Override
    public int getCarCapacity(int carId) {
        return 0;
    }

    @Override
    public boolean isInCar(int personId) {
        return false;
    }
}
