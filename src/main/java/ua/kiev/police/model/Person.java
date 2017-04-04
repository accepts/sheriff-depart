package ua.kiev.police.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.enums.Rank;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import java.util.List;

@Entity
@Table(name = "PERSON")
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PERSON_ID")
    private int personId;

    @NotEmpty(message = "First Name can't be empty!")
    @Column(name = "FIRST_NAME")
    private String firstName;

    @NotEmpty(message = "Last Name can't be empty!")
    @Column(name = "LAST_NAME")
    private String lastName;

    @Column(name = "RANK")
    private Rank rank;

    @Column(name = "IS_IN_CAR")
    private boolean isInCar;

    @Column(name = "CHARACTERISTIC", columnDefinition = "TEXT")
    private String characteristic;

    @Min(value = 18, message = "Person too young for working")
    @Max(value = 65, message = "Person too old for work")
    @Column(name = "AGE")
    private int age;

    @ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinTable(name = "CARS_PERSONS",
            joinColumns = @JoinColumn(name = "CAR_ID"),
            inverseJoinColumns = @JoinColumn(name = "PERSON_ID"))
    private List<Car> carList;

    @Transient
    private MultipartFile personImage;

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
        setIsInCar();
        return isInCar;
    }

    public void setIsInCar() {
        if (carList.size() == 0 || carList == null) {
            this.isInCar = false;
        } else {
            this.isInCar = true;
        }

    }

    public MultipartFile getPersonImage() {
        return personImage;
    }

    public void setPersonImage(MultipartFile personImage) {
        this.personImage = personImage;
    }

    public List<Car> getCarList() {
        return carList;
    }

    public void setCarList(List<Car> carList) {
        this.carList = carList;
    }

    @Override
    public String toString() {
        return "Person{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                '}';
    }
}
