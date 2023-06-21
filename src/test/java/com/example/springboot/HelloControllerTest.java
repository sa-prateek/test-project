package com.example.springboot;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class HelloControllerTest {

    @Test
    public void testIndex() {
        HelloController controller = new HelloController();
        String result = controller.index();
        assertEquals("Hello World from Spring Boot!", result);
    }
}
