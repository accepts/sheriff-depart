package ua.kiev.police.model;

import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.enums.Range;

public class Person{

    private String firstName;
    private String lastName;
    private Range range;
    private boolean isInCar;
    private MultipartFile personImage;

    public Person() {
    }

    public Person(String firstName, String lastName, Range range) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.range = range;
    }

    public Person(String firstName, String lastName, Range range, boolean isInCar, MultipartFile personImage) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.range = range;
        this.isInCar = isInCar;
        this.personImage = personImage;
    }

    //    Getter + Setter


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Range getRange() {
        return range;
    }

    public void setRange(Range range) {
        this.range = range;
    }

    public boolean isInCar() {
        return isInCar;
    }

    public void setIsInCar(boolean isInCar) {
        this.isInCar = isInCar;
    }

    public MultipartFile getPersonImage() {
        return personImage;
    }

    public void setPersonImage(MultipartFile personImage) {
        this.personImage = personImage;
    }
}
