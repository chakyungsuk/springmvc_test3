package com.junefw.infra.modules.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.junefw.infra.modules.member.Member;


@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/test/memberView")
	public String memberView(Model model) throws Exception{
		
		   //api 를 호출해서 데이터를 받아온다.
		
		   String apiUrl = "http://localhost:8090/rest/member/10";
		   
		   URL url = new URL(apiUrl);
		   HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		   httpURLConnection.setRequestMethod("GET");
		   
		   BufferedReader bufferedReader;
		   if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		   } else {
			   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		   }
		   
		   StringBuilder stringBuilder = new StringBuilder();
		   String line;
		   while  ((line = bufferedReader.readLine()) != null) {
				/* System.out.println("line: " + line); */
			   stringBuilder.append(line);
		   }
		   
		   bufferedReader.close();
		   httpURLConnection.disconnect();
		   
		   //-------------------------
		   
			/* System.out.println("final line:" + stringBuilder.append(line)); */
		   
		   ObjectMapper objectMapper = new ObjectMapper();
		   Member member = objectMapper.readValue(stringBuilder.toString(), Member.class);
		   
		   model.addAttribute("item", member);
		   
		return "test/memberView";
	}
	
	
	@RequestMapping(value = "/test/memberList")
	public String memberList(Model model) throws Exception{
		
		//api 를 호출해서 데이터를 받아온다.
		
		String apiUrl = "http://localhost:8090/rest/member";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while  ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		//-------------------------
		
		// json Array String -> java List
		System.out.println("final line:" + stringBuilder.append(line));
		
		ObjectMapper objectMapper = new ObjectMapper();
		   List<Member> memberList = objectMapper.readValue(stringBuilder.toString(), new TypeReference<List<Member>>() {});
		   
		   model.addAttribute("list", memberList);
		
		return "test/memberList";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		
//		api 호출해서 값을 가져온다.
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=1YUWyJsO0%2Bq9O9wAXBNg9623ZTxgAs9sJ9vLsK%2BgwWn1vlJ1H5htFEgMbERD%2Bc2MNZK34P6Pcrx8KOllaj1kkw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
//		json object + array string -> java map
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		System.out.println("#####Map");
		for(String key : map.keySet()) {
//			String value = (String)map.get(key);
//			String value = map.get(key).toString();
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>)map.get("header");
		
		System.out.println("#####Header");
		for(String key : header.keySet()) {
			String value = String.valueOf(header.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		System.out.println("header.get(\"resultCode\") : "+header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\") : "+header.get("resultMsg"));
		
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>)map.get("body");		
		
		List<Member> items = new ArrayList<Member>();
		items = (List<Member>) body.get("items");		
		
		System.out.println("items.size(): " + items.size());
		
		for(int i=0 ; i<items.size(); i++) {
			
		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		
		return "/test/memberList3";
	}
	
	@RequestMapping(value = "/test/publicCorona1ListJsonNodeList")
	public String publicCorona1ListJsonNodeList(Model model) throws Exception {	
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=1YUWyJsO0%2Bq9O9wAXBNg9623ZTxgAs9sJ9vLsK%2BgwWn1vlJ1H5htFEgMbERD%2Bc2MNZK34P6Pcrx8KOllaj1kkw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(stringBuilder.toString());	
		
		System.out.println("node.get(\"header\").get(\"resultCode\").asText(): " + node.get("header").get("resultCode").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText(): " + node.get("header").get("resultMsg").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText(): " + node.get("body").get("items").get(0).get("KIT_PROD_QTY").asText());
		
		model.addAttribute("node", node);
		
		return "/test/publicCorona1JsonNodeList";
	}	
	
	
	@RequestMapping(value = "/test/memberList2")
	public String memberList2() throws Exception {
		
		
		return "test/memberList2";
	}
	
	@RequestMapping(value = "/test/memberList4")
	public String chat_test() throws Exception {
		 
		return "test/memberList4";
	}
}
