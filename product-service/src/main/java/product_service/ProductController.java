package product_service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductController {

    @GetMapping("/products")
    public String products() {
        return "Product Service Running on AKS";
    }

    @GetMapping("/health")
    public String health() {
        return "UP";
    }
}