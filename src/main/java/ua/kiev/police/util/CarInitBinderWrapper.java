package ua.kiev.police.util;

import ua.kiev.police.model.Car;
import ua.kiev.police.service.CarService;

import java.beans.PropertyEditorSupport;

/*
http://www.sql.ru/forum/943393/spring-mvc-binding-list-initbinder-custompropertyeditor
 */
public class CarInitBinderWrapper extends PropertyEditorSupport {

    private CarService carService;

    public CarInitBinderWrapper(CarService carService) {
        this.carService = carService;
    }


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

}
