package Am;

import java.sql.Timestamp;
import java.util.Date;

import oracle.sql.DATE;

public class AmDTO {
	private String id;
	private int deptn;
	private String name;
	private int grade;
	private DATE day;
	private Timestamp start_d;
	private Timestamp end_d;
	private String state;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDeptn() {
		return deptn;
	}
	public void setDeptn(int deptn) {
		this.deptn = deptn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public DATE getDay() {
		return day;
	}
	public void setDay(DATE day) {
		this.day = day;
	}
	public Timestamp getStart_d() {
		return start_d;
	}
	public void setStart_d(Timestamp start_d) {
		this.start_d = start_d;
	}
	public Timestamp getEnd_d() {
		return end_d;
	}
	public void setEnd_d(Timestamp end_d) {
		this.end_d = end_d;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}
