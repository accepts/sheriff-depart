/*
package ua.kiev.police.dao.impl;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.kiev.police.dao.CarPersonDao;
import ua.kiev.police.model.Car;

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



    @Override
    public void removeAllPersonsFromCar(int carId) {
        Session session = sessionFactory.getCurrentSession();
        String cmdHQL = "DELETE FROM cars_persons WHERE car_id = :carId";
        SQLQuery query = session.createSQLQuery(cmdHQL);
        query.setParameter("carId", carId);
        int result = query.executeUpdate();
        System.out.println("<----removeAllPersonsFromCar: ||" + result);
        session.flush();
    }








    @Override
    public int getCarCapacity(int carId) {

        return 0;
    }


//    @Override
//    public boolean isInCar(int personId) {
//        Session session = sessionFactory.getCurrentSession();
//
//        String hql = "FROM cars_persons cp WHERE cp.person_id = :personId";
//        Query query = session.createQuery(hql);
//        query.setParameter("personId", personId);
//        int result = query.executeUpdate();
//        System.out.println("<======= Result ||: " + result);
//
//        return false;
//    }

}
*/
