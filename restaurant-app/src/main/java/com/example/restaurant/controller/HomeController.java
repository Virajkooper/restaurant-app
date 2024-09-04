package com.example.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.restaurant.entity.Reservation;
import com.example.restaurant.service.ReservationService;
import com.example.restaurant.service.UserService;
import com.example.restaurant.entity.User;

@Controller
public class HomeController {

	@Autowired
	private ReservationService reservationService;

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/staff")
	public String viewReservations(Model model) {
		// Fetch all reservations
		List<Reservation> reservations = reservationService.getAllReservations();

		System.out.println(reservations);
		// Add reservations to the model
		model.addAttribute("reservations", reservations);

		return "staff"; 
	}

	@GetMapping("/admin")
	public String viewUsers(Model model) {
		// Fetch all users
		List<User> users = userService.getAllReservations();

		System.out.println(users);
		// Add users to the model
		model.addAttribute("users", users);

		return "admin"; 
	}

}
