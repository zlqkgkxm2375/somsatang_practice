package com.jang.pany.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class SocketHandler extends TextWebSocketHandler {
	
	//HashMap<String, WebSocketSession> sessionMap = new HashMap<>(); //������ ������ ��Ƶ� ��
	List<HashMap<String, Object>> rls = new ArrayList<>(); //������ ������ ��Ƶ� ����Ʈ ---roomListSessions
	
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		//�޽��� �߼�
		String msg = message.getPayload();
		JSONObject obj = jsonToObjectParser(msg);
		
		String rN = (String) obj.get("roomNumber");
		HashMap<String, Object> temp = new HashMap<String, Object>();
		if(rls.size() > 0) {
			for(int i=0; i<rls.size(); i++) {
				String roomNumber = (String) rls.get(i).get("roomNumber"); //���Ǹ���Ʈ�� ����� ���ȣ�� �����ͼ�
				if(roomNumber.equals(rN)) { //�������� ���� �����Ѵٸ�
					temp = rls.get(i); //�ش� ���ȣ�� ���Ǹ���Ʈ�� �����ϴ� ��� object���� �����´�.
					break;
				}
			}
			
			//�ش� ���� ���ǵ鸸 ã�Ƽ� �޽����� �߼����ش�.
			for(String k : temp.keySet()) { 
				if(k.equals("roomNumber")) { //�ٸ� ���ȣ�� ��쿡�� �ǳʶڴ�.
					continue;
				}
				
				WebSocketSession wss = (WebSocketSession) temp.get(k);
				if(wss != null) {
					try {
						wss.sendMessage(new TextMessage(obj.toJSONString()));
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		//���� ����
		super.afterConnectionEstablished(session);
		boolean flag = false;
		String url = session.getUri().toString();
		System.out.println(url);
		String roomNumber = url.split("/chating/")[1];
		int idx = rls.size(); //���� ����� �����Ѵ�.
		if(rls.size() > 0) {
			for(int i=0; i<rls.size(); i++) {
				String rN = (String) rls.get(i).get("roomNumber");
				if(rN.equals(roomNumber)) {
					flag = true;
					idx = i;
					break;
				}
			}
		}
		
		if(flag) { //�����ϴ� ���̶�� ���Ǹ� �߰��Ѵ�.
			HashMap<String, Object> map = rls.get(idx);
			map.put(session.getId(), session);
		}else { //���� �����ϴ� ���̶�� ���ȣ�� ������ �߰��Ѵ�.
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("roomNumber", roomNumber);
			map.put(session.getId(), session);
			rls.add(map);
		}
		
		//���ǵ���� ������ �߱޹��� ����ID���� �޽����� �߼��Ѵ�.
		JSONObject obj = new JSONObject();
		obj.put("type", "getId");
		obj.put("sessionId", session.getId());
		session.sendMessage(new TextMessage(obj.toJSONString()));
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//���� ����
		if(rls.size() > 0) { //������ ����Ǹ� �ش� ���ǰ����� ã�Ƽ� �����.
			for(int i=0; i<rls.size(); i++) {
				rls.get(i).remove(session.getId());
			}
		}
		super.afterConnectionClosed(session, status);
	}
	
	private static JSONObject jsonToObjectParser(String jsonStr) {
		JSONParser parser = new JSONParser();
		JSONObject obj = null;
		try {
			obj = (JSONObject) parser.parse(jsonStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return obj;
	}
}