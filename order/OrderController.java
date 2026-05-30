package order_service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController {

    @GetMapping("/orders")
    public String orders() {
        return "Order Service Running on AKS";
    }

    @GetMapping("/health")
    public String health() {
        return "UP";
    }
}