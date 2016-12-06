package ua.kiev.police.model;

import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

public class PatrolCar {
    private String name;
    private MultipartFile carImage;
    private List<Person> personsInCar;
    private int carCapacity = 0;
    private String description;

    public PatrolCar() {
    }

    public PatrolCar(String name) {
        this.name = name;
    }

    public PatrolCar(String name, String description) {
        this.name = name;
        this.description = description;
    }

    // Getters + Setters


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MultipartFile getCarImage() {
        return carImage;
    }

    public void setCarImage(MultipartFile carImage) {
        this.carImage = carImage;
    }

    public int getCarCapacity() {
        return carCapacity;
    }

    public void setCarCapacity(int carCapacity) {
        this.carCapacity = carCapacity;
    }


    public List<Person> getPersonsInCar() {
        return personsInCar;
    }

    public void setPersonsInCar(List<Person> personsInCar) {
        this.personsInCar = personsInCar;
    }

    // Addition methods

    public void addPersonInCar(Person person){
        if (personsInCar == null){
            this.personsInCar = new ArrayList<Person>();
        }
        personsInCar.add(person);
        person.setIsInCar(true);
        carCapacity = carCapacity + 1;
        System.out.println("<----Car Capacity (ADD):" + carCapacity);
    }

    public void removePersonFromCar(Person person){
        personsInCar.remove(person);
        person.setIsInCar(false);
        carCapacity = carCapacity - 1;
        System.out.println("<----Car Capacity (REMOVE):" + carCapacity);
    }

}
