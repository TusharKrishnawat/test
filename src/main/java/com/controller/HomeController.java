package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.TodoDao;
import com.entities.Todo;

@Controller
public class HomeController {
	
	
	@Autowired
	TodoDao todoDao;
	
	@RequestMapping("/home")
	public String home(Model m)
	{
		String str="home";
		m.addAttribute("page", str);
		List<Todo> list = this.todoDao.getAll();
		m.addAttribute("todos",list);
		return "home";
	}
	
	@RequestMapping("/add")
	public String addTodo(Model m)
	{	
		Todo t=new Todo();
		m.addAttribute("page", "add");
		m.addAttribute("todo", t);

		return "home";
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login()
	{
		
		
		return "home";
		
	}
//	@RequestMapping(value="/saveTodo", method = RequestMethod.POST)
//	public String saveTodo(@ModelAttribute("todo") Todo t, Model m)
//	{
//		m.addAttribute("page", "home");
//		System.out.println(t);
//		t.setTodoDate(new Date());
//		this.todoDao.save(t);
//		this.todoDao.delete(todoId);
//		m.addAttribute("msg","successfullyadded...");
//		return "home";
//	}
	@RequestMapping(value="/saveTodo", method = RequestMethod.POST)
	public RedirectView saveTodo(@ModelAttribute("todo") Todo t, HttpServletRequest request)
	{
		
		System.out.println(t);
		t.setTodoDate(new Date());
		this.todoDao.save(t);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	
	@RequestMapping("/delete/{todoId}")
	public RedirectView deleteTodo(@PathVariable("todoId") int todoId, HttpServletRequest request)
	{
		
		this.todoDao.delete(todoId);		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	
	
	@RequestMapping("/update/{todoId}")
	public String  updateTodo(@PathVariable("todoId") int Id, Model m )
	{
		Todo td= this.todoDao.getTodo(Id);
//		this.todoDao.update(td);	
//		m.addAttribute("page", "update");
		m.addAttribute("todo", td);
		return "update-todo";
	}
	@RequestMapping(value="/updateTodo", method = RequestMethod.POST)
	public RedirectView update(@ModelAttribute("todo") Todo t, HttpServletRequest request)
	{
		
		System.out.println(t);
		t.setTodoDate(new Date());
		
		this.todoDao.update(t);	
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	
//	@RequestMapping("/update")
//	public String UpdateTodo(Model m)
//	{	
//		Todo t=new Todo();
//		m.addAttribute("page", "update");
//		m.addAttribute("todo", t);
//		
//		return "home";
//	}

}
