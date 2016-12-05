package ua.kiev.police.dao;

import ua.kiev.police.model.PatrolCar;
import ua.kiev.police.model.Person;
import ua.kiev.police.model.enums.Range;

import java.util.ArrayList;
import java.util.List;

public class PersonDao {

    private PatrolCar patrolCar;

    private List<Person> personList;

    //Dummy method
    public List<Person> getPersonList() {
        personList = new ArrayList<Person>();

        Person person1 = new Person();
        person1.setFirstName("Anna");
        person1.setLastName("Woodward");
        person1.setRange(Range.OFFICER);
        personList.add(person1);

        Person person2 = new Person();
        person2.setFirstName("Bob");
        person2.setLastName("Dillan");
        person2.setRange(Range.DETECTIVE);
        personList.add(person2);

        Person person3 = new Person();
        person3.setFirstName("Ed");
        person3.setLastName("Bell");
        person3.setRange(Range.SHERIFF);
        personList.add(person3);


        patrolCar = new PatrolCar("Dodge-0066W");
        patrolCar.addPersonInCar(person1);
        patrolCar.addPersonInCar(person2);

        return personList;
    }


    public PatrolCar getPatrolCar() {
        return patrolCar;
    }
}

/*
    private List<Product> productList;

    public List<Product> getProductList() {
        productList = new ArrayList<Product>();

        Product product1 = new Product();
        product1.setProductName("Guitar");
        product1.setProductCategory("Instruments");
        product1.setProductDescription("This is a fender stratocaster guitar!");
        product1.setProductPrice(1200);
        product1.setProductCondition("new");
        product1.setProductStatus("Active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("Fender");
        productList.add(product1);

        return productList;
    }

 */