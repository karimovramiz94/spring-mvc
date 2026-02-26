package org.example.service;

import org.example.domain.Product;

import java.util.List;

public interface OrderService {

    void processOrder(String productId, long quantity);

}
