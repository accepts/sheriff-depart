package ua.kiev.police.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.enums.Rank;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Entity
public class Person{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int personId;

    @NotEmpty(message = "First Name can't be empty!")
    private String firstName;

    @NotEmpty(message = "Last Name can't be empty!")
    private String lastName;

    private Rank rank;

    private boolean isInCar;

    @Column(columnDefinition="TEXT")
    private String characteristic;

    @Min(value = 18, message = "Person too young for working")
    @Max(value = 65, message = "Person too old for work")
    private int age;

    @Transient
    private MultipartFile personImage;

//    private PatrolCar car;

    //    Getter + Setter


    public String getCharacteristic() {
        return characteristic;
    }

    public void setCharacteristic(String characteristic) {
        this.characteristic = characteristic;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
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
