package com.example.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.restaurant.entity.Reservation;
import com.example.restaurant.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;

	@GetMapping("/book")
	public String book() {
		return "reservation";
	}

	@PostMapping("/book")
	public String bookTable(@RequestParam String name, @RequestParam String email, @RequestParam String phone,
			@RequestParam int person, @RequestParam String date, @RequestParam String time,
			@RequestParam String message, Model model) {

		Reservation reservation = new Reservation();
		reservation.setName(name);
		reservation.setEmail(email);
		reservation.setPhone(phone);
		reservation.setPerson(person);
		reservation.setDate(date);
		reservation.setTime(time);
		reservation.setMessage(message);
		try {
			
			reservationService.saveReservation(reservation);
			// If success
			model.addAttribute("alertMessage", "Your reservation was successful. See you soon!");
			model.addAttribute("alertType", "success");
		} catch (Exception e) {
			// If error
			model.addAttribute("alertMessage", "There was an error processing your reservation.");
			model.addAttribute("alertType", "error");
		}

		return "reservation";
	}

}
