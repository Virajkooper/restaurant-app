package com.example.restaurant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.restaurant.entity.Reservation;
import com.example.restaurant.entity.User;
import com.example.restaurant.repository.UserRepository;

@Service
public class UserService {
    
    @Autowired
    private UserRepository userRepository;
    
    
   
    public User registerUser(User user) {
        // Check email already exists or not
        User existingUser = userRepository.findByEmail(user.getEmail());
        if (existingUser != null) {
            throw new RuntimeException("Email already exists");
        }

        // Save and return the new user
        return userRepository.save(user);
    }

  
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
    
    public User findByEmail(String email) {
        return userRepository.findByEmail(email); 
    }

    
    public List<User> getAllReservations() {
        return userRepository.findAll();
    }

	
}
