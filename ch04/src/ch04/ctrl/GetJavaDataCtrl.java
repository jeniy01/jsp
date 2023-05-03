package ch04.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch04.Human;

@WebServlet("/GetJavaDataCtrl.do")	//요청 주소는 /GetJavaDataCtrl.do
public class GetJavaDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetJavaDataCtrl() { super(); }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] names = {"이다영","이유섭","이재호","이상혁","이승기"};
		
		ArrayList<String> lst1 = new ArrayList<>();
		lst1.add("조교행");
		lst1.add("조태정");
		lst1.add("허준");
		
		HashMap<String, String> map = new HashMap<>();
		map.put("name0", "김기태");
		map.put("name1", "관리자");
		map.put("name2", "김천사");
		map.put("name3", "김기태대왕");
		
		HashMap<String, String> map2 = new HashMap<>();
		map2.put("name", "김기태");
		map2.put("age", "42");
		map2.put("height", "174.6");
		
		ArrayList<Human> hList = new ArrayList<Human>();
		Human h1 = new Human();
		h1.setCountry("대한민국");
		h1.setName("김기태");
		h1.setAge(42);
		h1.setHobby("코딩");
		
		Human h2 = new Human();
		h2.setCountry("그리스");
		h2.setName("전재영");
		h2.setAge(37);
		h2.setHobby("여행");
		
		Human h3 = new Human();
		h3.setCountry("덴마크");
		h3.setName("조교행");
		h3.setAge(39);
		h3.setHobby("이글루 짓기");
		
		hList.add(h1);
		hList.add(h2);
		hList.add(h3);
		
		request.setAttribute("names", names);
		request.setAttribute("lst1", lst1);
		request.setAttribute("map", map);
		request.setAttribute("map2", map2);
		request.setAttribute("hList", hList);
		
		RequestDispatcher view = request.getRequestDispatcher("06getJavaData.jsp");	//view
		view.forward(request, response);
	}
}
