package dao;

import java.util.ArrayList;
import java.util.Calendar;

import dto.typeConfig;

public class configRepository {
	private ArrayList<typeConfig> listOfConfig= new ArrayList<typeConfig>();
	
	public configRepository() {
		typeConfig clock = new typeConfig();
		clock.setConfig("timezone : 'Asia/Seoul'");
		clock.setModuleId("clock");
		clock.setHead(null);
		clock.setPosition("top_left");
		
		typeConfig calender = new typeConfig();
		calender.setConfig(null);
		calender.setModuleId("calendar");
		calender.setPosition("top_left");
		
	}
	
	public ArrayList<typeConfig> getAllConfig(){
		return listOfConfig;
	}
}
