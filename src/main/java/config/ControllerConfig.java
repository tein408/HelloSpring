package config;

import controller.ShoppingController;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ControllerConfig {

    @Bean
    public ShoppingController shoppingController(){
        return new ShoppingController();
    }

}
