package com.example.restaurant.controller;

import com.example.restaurant.entity.User;
import com.example.restaurant.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("user", new User());
		return "register"; // JSP view name
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/loginUser")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model) {
		User user = userService.findByEmail(email); // Assuming email is used as username
		System.out.println("Role: " + user.getRole());

		if (user != null && user.getPassword().equals(password)) {
			switch (user.getRole()) {
			case "admin":
				return "redirect:/admin"; // Admin home page
			case "staff":
				return "redirect:/staff"; // Staff home page
			case "customer":
				return "redirect:/book"; // Customer home page
			default:
				model.addAttribute("error", "Unknown role");
				return "login"; // Stay on login page
			}
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "login"; // Stay on login page
		}
	}

	
	@PostMapping("/saveUser")
	public String registerUser(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("phoneno") String phoneno, @RequestParam("password") String password,
			@RequestParam(value = "role", defaultValue = "customer") String role, Model model) {
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPhoneno(phoneno);
		user.setPassword(password);
		user.setRole(role);

		try {
			userService.registerUser(user);
			// If success
			model.addAttribute("alertMessage", "Your account has been created successfully.");
			model.addAttribute("alertType", "success");

		} catch (Exception e) {
			model.addAttribute("alertMessage", "There was an error processing your Account Creation.");
			model.addAttribute("alertType", "error");
		}

		return "register"; 
	}

}
