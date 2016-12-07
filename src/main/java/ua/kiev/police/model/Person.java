package ua.kiev.police.model;

import ua.kiev.police.model.enums.Rank;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Person{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String personId;

    private String firstName;
    private String lastName;
    private Rank rank;
    private boolean isInCar;
//    private MultipartFile personImage;

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

}
