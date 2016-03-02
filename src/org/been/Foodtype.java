package org.been;

import java.util.HashSet;
import java.util.Set;

/**
 * Foodtype entity. @author MyEclipse Persistence Tools
 */

public class Foodtype implements java.io.Serializable {

	// Fields

	private Integer id;
	private String typename;
	private Set foodinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Foodtype() {
	}

	/** minimal constructor */
	public Foodtype(String typename) {
		this.typename = typename;
	}

	/** full constructor */
	public Foodtype(String typename, Set foodinfos) {
		this.typename = typename;
		this.foodinfos = foodinfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Set getFoodinfos() {
		return this.foodinfos;
	}

	public void setFoodinfos(Set foodinfos) {
		this.foodinfos = foodinfos;
	}

}