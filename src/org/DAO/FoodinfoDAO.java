package org.DAO;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import org.been.BaseHibernateDAO;
import org.been.Foodinfo;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Foodinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.been.Foodinfo
 * @author MyEclipse Persistence Tools
 */
public class FoodinfoDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(FoodinfoDAO.class);
	// property constants
	public static final String FOOD_NAME = "foodName";
	public static final String INTRO = "intro";
	public static final String PRICE = "price";
	public static final String PICTURE = "picture";
	public static final String CITY = "city";
	public static final String SALENUM = "salenum";

	public void save(Foodinfo transientInstance) {
		log.debug("saving Foodinfo instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Foodinfo persistentInstance) {
		log.debug("deleting Foodinfo instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Foodinfo findById(java.lang.Integer id) {
		log.debug("getting Foodinfo instance with id: " + id);
		try {
			Foodinfo instance = (Foodinfo) getSession().get(
					"org.been.Foodinfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Foodinfo instance) {
		log.debug("finding Foodinfo instance by example");
		try {
			List results = getSession().createCriteria("org.been.Foodinfo")
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
		log.debug("finding Foodinfo instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Foodinfo as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByFoodName(Object foodName) {
		return findByProperty(FOOD_NAME, foodName);
	}

	public List findByIntro(Object intro) {
		return findByProperty(INTRO, intro);
	}

	public List findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}

	public List findByPicture(Object picture) {
		return findByProperty(PICTURE, picture);
	}

	public List findByCity(Object city) {
		return findByProperty(CITY, city);
	}

	public List findBySalenum(Object salenum) {
		return findByProperty(SALENUM, salenum);
	}

	public List findAll() {
		log.debug("finding all Foodinfo instances");
		try {
			String queryString = "from Foodinfo";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Foodinfo merge(Foodinfo detachedInstance) {
		log.debug("merging Foodinfo instance");
		try {
			Foodinfo result = (Foodinfo) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Foodinfo instance) {
		log.debug("attaching dirty Foodinfo instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Foodinfo instance) {
		log.debug("attaching clean Foodinfo instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}