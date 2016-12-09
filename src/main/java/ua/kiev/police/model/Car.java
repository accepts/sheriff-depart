package ua.kiev.police.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

@Entity
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer carId;

    @NotEmpty
    private String name;

    private int carCapacity = 0;

    private String description;

//    private List<Person> personsInCar;

    @Transient
    private MultipartFile carImage;

    public Car() {
    }

    // Getters + Setters

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCarCapacity() {
        return carCapacity;
    }

    public void setCarCapacity(int carCapacity) {
        this.carCapacity = carCapacity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

//    public List<Person> getPersonsInCar() {
//        return personsInCar;
//    }
//
//    public void setPersonsInCar(List<Person> personsInCar) {
//        this.personsInCar = personsInCar;
//    }

    public MultipartFile getCarImage() {
        return carImage;
    }

    public void setCarImage(MultipartFile carImage) {
        this.carImage = carImage;
    }


    // Addition methods
/*

    public void addPersonInCar(Person person){
        if (personsInCar == null){
            this.personsInCar = new ArrayList<Person>();
        }
        personsInCar.add(person);
        person.setIsInCar(true);
        carCapacity = carCapacity + 1;
    }

    public void removePersonFromCar(Person person){
        personsInCar.remove(person);
        person.setIsInCar(false);
        carCapacity = carCapacity - 1;
    }
*/

}
