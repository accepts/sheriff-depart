package ua.kiev.police.dao;

import ua.kiev.police.model.Person;

import java.util.List;

public interface PersonDao {

    void addPerson(Person person);

    Person getPersonById(int id);

    List<Person> getAllPersons();

    void deletePerson(int id);

    void editPerson(Person person);
}
