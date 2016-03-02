package org.DAO;

import java.util.List;
import java.util.Set;

import org.been.BaseHibernateDAO;
import org.been.Foodtype;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Foodtype entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.been.Foodtype
 * @author MyEclipse Persistence Tools
 */
public class FoodtypeDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(FoodtypeDAO.class);
	// property constants
	public static final String TYPENAME = "typename";

	public void save(Foodtype transientInstance) {
		log.debug("saving Foodtype instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Foodtype persistentInstance) {
		log.debug("deleting Foodtype instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Foodtype findById(java.lang.Integer id) {
		log.debug("getting Foodtype instance with id: " + id);
		try {
			Foodtype instance = (Foodtype) getSession().get(
					"org.been.Foodtype", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Foodtype instance) {
		log.debug("finding Foodtype instance by example");
		try {
			List results = getSession().createCriteria("org.been.Foodtype")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Foodtype instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Foodtype as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTypename(Object typename) {
		return findByProperty(TYPENAME, typename);
	}

	public List findAll() {
		log.debug("finding all Foodtype instances");
		try {
			String queryString = "from Foodtype";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Foodtype merge(Foodtype detachedInstance) {
		log.debug("merging Foodtype instance");
		try {
			Foodtype result = (Foodtype) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Foodtype instance) {
		log.debug("attaching dirty Foodtype instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Foodtype instance) {
		log.debug("attaching clean Foodtype instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}