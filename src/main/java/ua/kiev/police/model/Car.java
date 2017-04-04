package ua.kiev.police.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "CAR")
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CAR_ID")
    private Integer carId;

    @NotEmpty
    @Column(name = "NAME")
    private String name;


    @Column(name = "CAPACITY")
    private int carCapacity = 0;

    @Column(name = "DESCRIPTION")
    private String description;

    @ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinTable(name = "CARS_PERSONS",
            joinColumns = @JoinColumn(name = "PERSON_ID"),
            inverseJoinColumns = @JoinColumn(name = "CAR_ID"))
    private List<Person> personsInCar;


    @Transient
    private MultipartFile carImage;


    public Car() {
    }

    // Getters + Setters

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
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

    public List<Person> getPersonsInCar() {
        return personsInCar;
    }

    public void setPersonsInCar(List<Person> personsInCar) {
        this.personsInCar = personsInCar;
    }

    public MultipartFile getCarImage() {
        return carImage;
    }

    public void setCarImage(MultipartFile carImage) {
        this.carImage = carImage;
    }

    @Override
    public String toString() {
        return "Car{" +
                "name='" + name + '\'' +
                ", carId=" + carId +
                ", description='" + description + '\'' +
                '}';
    }

    // Addition methods
    public void clearAllPersonsFromCar() {
        if (personsInCar != null || personsInCar.size() != 0) {
            personsInCar.clear();
        }
    }

}

