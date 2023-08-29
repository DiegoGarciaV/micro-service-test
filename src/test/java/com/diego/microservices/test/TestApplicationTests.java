package com.diego.microservices.test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.mockito.Mock;

import com.diego.microservices.test.model.dto.IUsersJpaRepository;
import com.diego.microservices.test.model.dto.Users;

@SpringBootTest
class TestApplicationTests {

	@Mock
	IUsersJpaRepository usersJpaRepository;

	
	@Test
	void getAllUsersTest()
	{
		Users user1 = new Users(1,"Usr","U1",20,"u1@mail.com");
		Users user2 = new Users(1,"Usr","U2",30,"u2@mail.com");
		Users user3 = new Users(1,"Usr","U3",40,"u3@mail.com");
		
		when(usersJpaRepository.findAll()).thenReturn(List.of(user1,user2,user3));

		List<Users> result = usersJpaRepository.findAll();
		
		assertEquals(3, result.size());
        assertEquals("U1", result.get(0).getLastName());
        assertEquals("U2", result.get(1).getLastName());
		assertEquals("U3", result.get(2).getLastName());
		
	}
}
