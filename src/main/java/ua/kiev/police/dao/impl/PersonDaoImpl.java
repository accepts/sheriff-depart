package ua.kiev.police.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.kiev.police.dao.PersonDao;
import ua.kiev.police.model.Person;

import java.util.List;

@Repository
@Transactional
public class PersonDaoImpl implements PersonDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addPerson(Person person) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(person);
        session.flush();
    }

    @Override
    public Person getPersonById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Person person = (Person) session.get(Person.class, id);
        return person;
    }

    @Override
    public List<Person> getAllPersons() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Person");
        List<Person> persons = query.list();
        session.flush();
        return persons;
    }

    @Override
    public void deletePerson(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getPersonById(id));
    }

    @Override
    public void editPerson(Person person) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(person);
        session.flush();

    }
}


