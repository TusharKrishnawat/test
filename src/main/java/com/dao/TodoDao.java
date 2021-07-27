package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entities.Todo;


@Component
public class TodoDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int save(Todo t)
	{
		Integer i=(Integer) this.hibernateTemplate.save(t);
		return i;
	}
	
	public List<Todo> getAll()
	{
		List<Todo> todos = this.hibernateTemplate.loadAll(Todo.class);
		return todos;
	}
	public Todo getTodo(int todoId) {
		Todo t= this.hibernateTemplate.get(Todo.class, todoId);
		return t;
	}
	
	@Transactional
	public void delete(int todoId) {
		Todo t = this.hibernateTemplate.get(Todo.class, todoId);
		this.hibernateTemplate.delete(t);
	}
	@Transactional
	public void update(Todo t) {
		this.hibernateTemplate.update(t);
		
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}



	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
