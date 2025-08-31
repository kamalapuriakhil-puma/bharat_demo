package com.bharath.basicTodo.controller; // Ensure this matches your package structure

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController; // <--- ADD THIS ANNOTATION

@RestController // <--- THIS IS CRUCIAL
public class HelloController {

    @GetMapping("/") // Maps requests to the root path
    public String hello() {
        return "Hello from Bharath";
    }

    // You can also add a specific path, e.g., /hello
    @GetMapping("/hello")
    public String sayHello() {
        return "Hello from the /hello endpoint!";
    }
}