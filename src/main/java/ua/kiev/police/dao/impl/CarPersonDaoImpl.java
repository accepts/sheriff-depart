package ua.kiev.police.dao.impl;

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

   //TODO CarPersonDaoImpl

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void editPersonInCar(Car car) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(car);
        session.flush();
    }


    /*    @Override
    public void editPersonInCar(Car car) {
        Session session = sessionFactory.getCurrentSession();
        person.setCar(car);
        session.saveOrUpdate(person);
        car.getPersonsInCar().add(person);
        session.saveOrUpdate(car);
        session.flush();
    }*/

    /*

    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }
     */

    @Override
    public void removePersonFromCar(Person person, Car car) {

    }

    @Override
    public int getCarCapacity(int carId) {
        return 0;
    }

    @Override
    public boolean isInCar(int personId) {
        return false;
    }
}
