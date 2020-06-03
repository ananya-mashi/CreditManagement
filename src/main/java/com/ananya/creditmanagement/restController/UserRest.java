package com.ananya.creditmanagement.restController;


import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ananya.creditmanagement.dao.UserRepository;
import com.ananya.creditmanagement.model.History;
import com.ananya.creditmanagement.model.User;
import com.ananya.creditmanagement.service.UserService;

@Controller
@Validated
public class UserRest {
	private UserService userService;
	@Autowired
	public UserRest(UserService theService) {
		userService = theService;
	}
	@GetMapping("/")
public String index() {
		
		
		return "home";
		}
	
	@GetMapping("/user-list")
	public String listCustomer(Model theModel) {
		
		
		List<User> users = userService.findAll();
		
		// add to the spring model
		theModel.addAttribute("users",users);
		
		return "list-user";
	}
	
	@GetMapping("/history")
	public String listTransaction(Model theModel) {
		
		
	List<History> t = userService.findAllT();
		
		// add to the spring model
		theModel.addAttribute("users",t);
		
		return "history";
	}
	@GetMapping("/user/{id}")
	public String transaction(@PathVariable("id")Long id,
			Model theModel) {
		
// get the customer from our service
User user = userService.findById(id);

// set customer as a model attribute to pre-populate the form
theModel.addAttribute("user",user);
System.out.println(user);
// send over to our form		
return "oneUser";
	}

	@GetMapping("/transfer/{id}")
	public String transfer(@PathVariable("id")Long id,ModelMap theModel) {
		User t_u = userService.findById(id);

		
		List<User> users = userService.findAll();
		System.out.println(users);
		
		theModel.addAttribute("users",users);
		
		theModel.addAttribute("t",t_u);
			return "transferTo";			
	}
	
	

	@GetMapping("/transferTo/{id}/{name}")
	public String transferTo( @PathVariable("id")Long id,@PathVariable("name")String name,ModelMap theModel) {
		User	user1 =userService.findById(id);
		User user2 =userService.findByName(name);
		theModel.addAttribute("user1",user1);
		theModel.addAttribute("user2",user2);
		theModel.addAttribute("user",user2);
		System.out.println(user1);
		System.out.println(user2);
		
	return "amount";			
	}
	@GetMapping("/save/{id}/{name}")
public String save( @PathVariable("id")Long id,@PathVariable("name")String name,
			ModelMap theModel,
			@RequestParam(value="amount", required=false)int amount ) {
	User user1 =userService.findById(id);
		User user2 =userService.findByName(name);
		
		int a1=user1.getCurrentCredit();
		int a2=user2.getCurrentCredit();
	
		if(amount<1||amount>=5000||a1==0||(user1.getId()==user2.getId())) {
			return "home";
		}
		else {	theModel.addAttribute("user1",user1);
		theModel.addAttribute("user2",user2);
	
		//userService.update(user2.getId(),user.getAmount());
			History user3 =userService.findBySender(user1.getName(),user2.getName(),amount);
		
		System.out.println(user1);
		System.out.println(user2);
		//theModel.put("amount",amount);
		
		System.out.println(a1);
		System.out.println(a2);
		user1.setCurrentCredit(a1-amount);
		user2.setCurrentCredit(a2+amount);
	
		System.out.println(user1.getCurrentCredit());
		userService.save(user2);
		userService.save(user2);
		userService.save(user3);
		return "done";}
	}
	}
