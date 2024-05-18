package com.postgresql.Daruma.config.security;

import java.io.IOException;
import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

@Configuration
public class FirebaseConfig {

    @Autowired
    ResourceLoader resourceLoader;

    @Bean
    FirebaseApp firebaseApp() throws IOException {
        // Check if firebase was already initialized
        if (FirebaseApp.getApps().isEmpty()) {
            Resource resource = resourceLoader.getResource("classpath:firebase.json");
            InputStream serviceAccountStream = resource.getInputStream();

            FirebaseOptions firebaseOptions = FirebaseOptions.builder()
                    .setCredentials(GoogleCredentials.fromStream(
                            serviceAccountStream))
                    .build();
            serviceAccountStream.close();
            return FirebaseApp.initializeApp(firebaseOptions);
        }
        return FirebaseApp.getInstance();
    }
}
