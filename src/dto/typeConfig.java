package dto;

import java.io.Serializable;

public class typeConfig implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String moduleId; //모듈 이름
	public String getModuleId() {
		return moduleId;
	}
	public void setModuleId(String moduleId) {
		this.moduleId = moduleId;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getConfig() {
		return config;
	}
	public void setConfig(String config) {
		this.config = config;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getElseConfig() {
		return elseConfig;
	}
	public void setElseConfig(String elseConfig) {
		this.elseConfig = elseConfig;
	}
	private String position; //모듈 위치
	private String config; //config 내용
	private String head; //head 내용
	private String elseConfig; //config 기본내용 외
}
