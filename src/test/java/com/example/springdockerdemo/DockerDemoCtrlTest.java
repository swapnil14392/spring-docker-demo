package com.example.springdockerdemo;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

class DockerDemoCtrlTest {
    /**
     * Method under test: {@link DockerDemoCtrl#display()}
     */
    @Test
    void testDisplay() {
        //   Diffblue Cover was unable to write a Spring test,
        //   so wrote a non-Spring test instead.
        //   Diffblue AI was unable to find a test

        assertEquals("welcome to docker...", (new DockerDemoCtrl()).display());
    }
}

