package com.example.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.restaurant.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
	  User findByEmail(String email);
	  User findByUsername(String username);
}