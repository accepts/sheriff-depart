package ua.kiev.police.model;

import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.enums.Rank;

public class Person{
    private String personId;
    private String firstName;
    private String lastName;
    private Rank rank;
    private boolean isInCar;
    private MultipartFile personImage;

    public Person() {
    }

    public Person(String firstName, String lastName, Rank rank) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.rank = rank;
    }

    public Person(String firstName, String lastName, Rank rank, boolean isInCar, MultipartFile personImage) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.rank = rank;
        this.isInCar = isInCar;
        this.personImage = personImage;
    }

    //    Getter + Setter


    public String getPersonId() {
        return personId;
    }

    public void setPersonId(String personId) {
        this.personId = personId;
    }

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

    public Rank getRank() {
        return rank;
    }

    public void setRank(Rank rank) {
        this.rank = rank;
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
