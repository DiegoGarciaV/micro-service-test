package com.diego.microservices.test.api;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.diego.microservices.test.model.dto.IUsersJpaRepository;
import com.diego.microservices.test.model.dto.UserDto;
import com.diego.microservices.test.model.dto.Users;

@RestController
public class ApiController {
    
    @Autowired
    IUsersJpaRepository usersRepository;

    @GetMapping(value={"/all","all"})
    public ResponseEntity<List<Users>> getUsers()
    {
        return ResponseEntity.ok().body(usersRepository.findAll());
    }
    
    @GetMapping(value={"/id/{idUser}","id/{idUser}"})
    public ResponseEntity<Optional<Users>> getUserById(@PathVariable int idUser)
    {
        return ResponseEntity.ok().body(usersRepository.findById(idUser));
    }
    
    @PostMapping(value={"/save","save"})
    public ResponseEntity<Users> addUser(@RequestBody UserDto newUser)
    {
        Users jpaUser = new Users();
        jpaUser.setAge(newUser.getAge());
        jpaUser.setEmail(newUser.getEmail());
        jpaUser.setFirstName(newUser.getFirstName());
        jpaUser.setLastName(newUser.getLastName());
        return ResponseEntity.ok().body(usersRepository.save(jpaUser));
    }  

    @PostMapping(value={"/update/{idUser}","update/{idUser}"})
    public ResponseEntity<Users> updateUser(@RequestBody UserDto user, @PathVariable int idUser)
    {
        Users jpaUser = new Users();
        jpaUser.setIdUser(idUser);
        jpaUser.setAge(user.getAge());
        jpaUser.setEmail(user.getEmail());
        jpaUser.setFirstName(user.getFirstName());
        jpaUser.setLastName(user.getLastName());
        return ResponseEntity.ok().body(usersRepository.save(jpaUser));
    }  

    @PostMapping(value={"/delete/{idUser}","delete/{idUser}"})
    public ResponseEntity<String> deleteUserById(@PathVariable int idUser)
    {
        usersRepository.deleteById(idUser);
        return ResponseEntity.noContent().build();
    }  
}
