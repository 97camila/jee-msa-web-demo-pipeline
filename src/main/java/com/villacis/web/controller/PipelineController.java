package com.villacis.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * @author Jeferson Villacis
 * @version 1.0
 * @since 26/10/2026 Copyright 2026
 */
@RestController
public class PipelineController {
  @GetMapping("/api/status")
  public Map<String, String> getStatus() {
    return Map.of(
        "status", "UP",
        "environment", "OpenShift Sandbox",
        "message", "Pipeline successfully executed");
  }
}
