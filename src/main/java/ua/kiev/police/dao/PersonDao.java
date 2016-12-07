package ua.kiev.police.dao;

import ua.kiev.police.model.PatrolCar;
import ua.kiev.police.model.Person;
import ua.kiev.police.model.enums.Rank;
import ua.kiev.police.util.LoggerWrapper;

import java.util.ArrayList;
import java.util.List;

public class PersonDao {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(PersonDao.class);

    private PatrolCar patrolCar;

    private List<Person> personList;

    //Dummy method
    public List<Person> getPersonList() {
        personList = new ArrayList<Person>();

        Person person1 = new Person();
        person1.setPersonId("person001");
        person1.setFirstName("Anna");
        person1.setLastName("Woodward");
        person1.setRank(Rank.OFFICER);
        personList.add(person1);

        Person person2 = new Person();
        person2.setPersonId("person002");
        person2.setFirstName("Bob");
        person2.setLastName("Dillan");
        person2.setRank(Rank.DETECTIVE);
        personList.add(person2);

        Person person3 = new Person();
        person3.setPersonId("person003");
        person3.setFirstName("Ed");
        person3.setLastName("Bell");
        person3.setRank(Rank.SHERIFF);
        personList.add(person3);

        patrolCar = new PatrolCar("Dodge-0066W");
        patrolCar.addPersonInCar(person1);
        patrolCar.addPersonInCar(person2);
        patrolCar.setDescription("Fast as a shark, it' come out from the dark ");
        LOG.info("adding patrolCar: {} \n", patrolCar);

        return personList;
    }


    public PatrolCar getPatrolCar() {
        return patrolCar;
    }


/*    public Person getPersonById(String personId) throws IOException {
        for (Person person : getPersonList()) {
            if (person.getPersonId().equals(personId)){
//                LOG.info("Found person: \n ", person);
                return person;
            }
        }
        throw new IOException("No person found!");
    }*/
}
