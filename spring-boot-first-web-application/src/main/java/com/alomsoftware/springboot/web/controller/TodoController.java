package com.alomsoftware.springboot.web.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alomsoftware.springboot.web.service.LoginService;
import com.alomsoftware.springboot.web.service.TodoService;

@Controller 
//Controller will pick up the class
@SessionAttributes("name") //with this tag during login time user name will be available through out the controller
//and i have to use this tag where ever i need for user name.
public class TodoController {

	//Injected Automatically
	@Autowired
	TodoService todoService;
 
	/**
	 * This method will get the name of the user will put the name in the model
	 * @param model
	 * @return will return the user to the list-todo page
	 */
	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)	 
	public String showTodos(ModelMap model){
		String name = (String) model.get("name");
		model.put("todos", todoService.retrieveTodos(name)); 
		return "list-todos";
	}
	
	/**
	 * This method will work for adding todo stuffs.
	 * @param model
	 * @return to the add-todo page
	 */
	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)	 
	public String showAddTodo(ModelMap model){	 
		return "todo";
	}
	
	/**
	 * This method is mapping for delete to dos and redirect to list-todos
	 * and added tag requrestParam with id and called deleteTodo method
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete-todo", method = RequestMethod.GET)	 
	public String deleteTodo(@RequestParam int id){	 
		todoService.deleteTodo(id);
		return "redirect:/list-todos";
	}
	
	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)	 
	public String addTodo(ModelMap model, @RequestParam String desc){	
		todoService.addTodo((String) model.get("name"), desc, new Date(), false);
		return "redirect:/list-todos";
	}
	
	
}
