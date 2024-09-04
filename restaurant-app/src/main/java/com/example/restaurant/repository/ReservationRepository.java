package com.example.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.restaurant.entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {


}