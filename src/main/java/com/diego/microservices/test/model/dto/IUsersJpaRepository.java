package com.diego.microservices.test.model.dto;

import org.springframework.data.jpa.repository.JpaRepository;

public interface IUsersJpaRepository extends JpaRepository<Users,Integer> {


    
}
