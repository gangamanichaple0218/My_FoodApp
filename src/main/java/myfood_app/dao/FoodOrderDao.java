package myfood_app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import myfood_app.dto.FoodOrder;

public class FoodOrderDao {

	public EntityManager getEntityManager() {
		return Persistence.createEntityManagerFactory("mani").createEntityManager();
	}

	public FoodOrder saveFoodOrder(FoodOrder foodOrder) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.persist(foodOrder);
		entityTransaction.commit();

		return foodOrder;
	}

	public FoodOrder getById(int id) {
		EntityManager entityManager = getEntityManager();
		return entityManager.find(FoodOrder.class, id);
	}

	public List<FoodOrder> getFoodOrder() {
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery("select f from FoodOrder f");
		return query.getResultList();
	}

}
