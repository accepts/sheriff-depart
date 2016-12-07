package ua.kiev.police.dao;

import ua.kiev.police.model.Person;

import java.util.List;

public interface PersonDao {
    void addPerson(Person person);
    Person getPersonById(String id);
    List<Person> getAllPersons();
    void deletePerson(String id);
}


/*    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();
    void deleteProducts(String id);*/
