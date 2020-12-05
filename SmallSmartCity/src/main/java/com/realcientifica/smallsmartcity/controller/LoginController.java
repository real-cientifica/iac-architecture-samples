/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.realcientifica.smallsmartcity.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.List;
import javax.xml.bind.DatatypeConverter;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author jeanj
 */
@Controller
public class LoginController {

    public MappingJackson2HttpMessageConverter getMappingJackson2HttpMessageConverter() {
        MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter = new MappingJackson2HttpMessageConverter();
        mappingJackson2HttpMessageConverter.setSupportedMediaTypes(Collections.singletonList(MediaType.APPLICATION_FORM_URLENCODED));
        return mappingJackson2HttpMessageConverter;
    }

    @RequestMapping(value = "/callback", params = {"code", "state"}, method = GET)
    public String loginIDCS(@RequestParam("code") String code, @RequestParam("state") int state) throws UnsupportedEncodingException, JsonProcessingException {

        String clientId = "e8b278bd09b14f7c9335afe12614a464";
        String clientSecret = "6126a131-bcab-4b28-a527-39ece10bab15";
        String redirectUri = "http://localhost:17714/callback";
        String tokenURL = "https://idcs-b444b4650f304c6a8c99c6a48efb12ae.identity.oraclecloud.com/oauth2/v1/token";

        //Codifica as credenciais do app cliente para ser enviado no corpo da requisição
        String encodedData = Base64.getEncoder().encodeToString((clientId + ":" + clientSecret).getBytes());

        RestTemplate restTemplate = new RestTemplate();
        restTemplate.getMessageConverters().add(new FormHttpMessageConverter());
        restTemplate.getMessageConverters().add(getMappingJackson2HttpMessageConverter());

        //Valores do cabeçalho da requisição
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
        headers.set("Authorization", "Basic " + encodedData);

        //Valores do corpo da requisição
        MultiValueMap<String, String> requestBody = new LinkedMultiValueMap<>();
        requestBody.put("grant_type", Arrays.asList("authorization_code"));
        requestBody.put("code", Arrays.asList(code));
        requestBody.put("redirect_uri", Arrays.asList(redirectUri));

        /*ObjectMapper objectMapper = new ObjectMapper();
        String jsonStr = objectMapper.writeValueAsString(requestBody);*/
        
        //Monta o cabeçalho e corpo da requisição
        HttpEntity entity = new HttpEntity<>(requestBody, headers);

        //Executa a requisição - POST
        ResponseEntity<String> response = restTemplate.exchange(tokenURL, HttpMethod.POST, entity, String.class);

        //Extrai o token de acesso da resposta em JSON
        ObjectNode objNode = new ObjectMapper().readValue(response.getBody(), ObjectNode.class);
        JsonNode jsonNode = objNode.get("access_token");
        System.out.println("Token de acesso: "+jsonNode.asText());
        
        return "home";
    }

    @RequestMapping(value = "/ad/callback", params = {"code", "state"}, method = GET)
    public String loginAD(@RequestParam("code") String code, @RequestParam("state") int state) throws UnsupportedEncodingException, JsonProcessingException {
        return "home";
    }
    
    @RequestMapping(value = "/loginOracle")
    public String entrarComOracle() {
        String authzURL = "https://idcs-b444b4650f304c6a8c99c6a48efb12ae.identity.oraclecloud.com/oauth2/v1/authorize";
        String clientId = "e8b278bd09b14f7c9335afe12614a464";
        String clientSecret = "6126a131-bcab-4b28-a527-39ece10bab15";
        String redirectUri = "http://localhost:17714/callback";

        return "redirect:" + authzURL + "?response_type=code&client_id=" + clientId + "&client_secret=" + clientSecret + "&redirect_uri=" + redirectUri + "&scope=openid&state=1234";
    }

    @RequestMapping(value = "/loginMicrosoft")
    public String entrarComMicrosoft() {
        String authzURL = "https://login.microsoftonline.com/4b836e32-29e0-410a-ac62-5adeb2b54caf/oauth2/v2.0/authorize";
        String clientId = "dd1a06a0-4269-47fe-b3ab-fa9ce07ec712";
        String clientSecret = "701c01d1-8c14-411c-874c-e1c30660e954";
        //s3_H0t318Kgh9U7-ZWyu180-6SwYEYWi-p
        String redirectUri = "http://localhost:17714/ad/callback";

        return "redirect:" + authzURL + "?response_type=code&client_id=" + clientId + "&client_secret=" + clientSecret + "&redirect_uri=" + redirectUri + "&scope=openid&state=1234";
    }

    void entrarComGoogle() {

    }

}
