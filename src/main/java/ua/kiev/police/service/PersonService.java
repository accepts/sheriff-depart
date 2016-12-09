package ua.kiev.police.service;

import ua.kiev.police.model.Person;

import java.util.List;

public interface PersonService {
    void addPerson(Person person);
    Person getPersonById(int id);
    List<Person> getAllPersons();
    void deletePerson(int id);
    void editPerson(Person person);
}
