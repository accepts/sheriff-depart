package ua.kiev.police.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.kiev.police.dao.CarDao;
import ua.kiev.police.model.Car;

import java.util.List;

@Repository
@Transactional
public class CarDaoImpl implements CarDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void addCar(Car car) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(car);
        session.flush();
    }

    @Override
    public Car getCarById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Car car = (Car) session.get(Car.class, id);
        return car;
    }

    @Override
    public List<Car> getAllCars() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Car");
        List<Car> cars = query.list();
        session.flush();
        return cars;
    }

    @Override
    public void deleteCar(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getCarById(id));
    }

    @Override
    public void editCar(Car car) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(car);
        session.flush();
    }
}
