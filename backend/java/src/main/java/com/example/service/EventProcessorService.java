package com.example.service;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class EventProcessorService {
    @KafkaListener(topics = "events", groupId = "group_id")
    public void consume(String message) {
        // Process the message
        System.out.println("Received message: " + message);
    }
}