package product_service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;

@Controller
public class ProductController {

    @GetMapping("/products")
    public String products() {
        return "forward:/index.html";
    }

    @GetMapping("/health")
    public String health() {
        return "UP";
    }
}