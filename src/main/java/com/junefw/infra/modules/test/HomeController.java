package com.junefw.infra.modules.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.type.TypeReference;
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
}
