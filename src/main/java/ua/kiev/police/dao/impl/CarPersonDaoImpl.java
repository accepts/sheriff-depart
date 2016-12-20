package ua.kiev.police.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.kiev.police.dao.CarPersonDao;
import ua.kiev.police.model.Car;
import ua.kiev.police.model.Person;

@Repository
@Transactional
public class CarPersonDaoImpl implements CarPersonDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void editPersonInCar(Car car) {
        Session session = sessionFactory.getCurrentSession();

        if (car.getPersonsInCar() != null){
            car.setCarCapacity(car.getPersonsInCar().size());
        } else {
            car.setCarCapacity(0);
        }

        session.update(car);
        session.flush();
    }



    //TODO remove all persons from car
    @Override
    public void removePersonFromCar(Person person, Car car) {
    }


    //TODO delete this method
    @Override
    public int getCarCapacity(int carId) {

        return 0;
    }


    //TODO implements this method
    @Override
    public boolean isInCar(int personId) {
        Session session = sessionFactory.getCurrentSession();

        String hql = "FROM cars_person cp WHERE cp.person_id = :personId";
        Query query = session.createQuery(hql);
        query.setParameter("personId", personId);
        Person p = query.uniqueResult();


        /*
                String hql = "FROM Employee E WHERE E.id = :employee_id";
Query query = session.createQuery(hql);
query.setParameter("employee_id",10);
List results = query.list();
                 */



        return false;
    }
}
