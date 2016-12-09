package ua.kiev.police.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.kiev.police.dao.PersonDao;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.PersonService;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDao personDao;

    @Override
    public void addPerson(Person person) {
        personDao.addPerson(person);
    }

    @Override
    public Person getPersonById(int id) {
        return personDao.getPersonById(id);
    }

    @Override
    public List<Person> getAllPersons() {
        return personDao.getAllPersons();
    }

    @Override
    public void deletePerson(int id) {
        personDao.deletePerson(id);
    }

    @Override
    public void editPerson(Person person) {
        personDao.editPerson(person);
    }
}
