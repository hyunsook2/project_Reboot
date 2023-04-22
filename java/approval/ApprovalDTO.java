package approval;

import java.sql.Date;

public class ApprovalDTO {
	private String id;
	private String name;
	private int deptn;
	private String title;
	private String content;
	private int companion;
	private int okay;
	private String boss;
	private Date regdate;
	private String ofile;
	private String nfile;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDeptn() {
		return deptn;
	}
	public void setDeptn(int deptn) {
		this.deptn = deptn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCompanion() {
		return companion;
	}
	public void setCompanion(int companion) {
		this.companion = companion;
	}
	public int getOkay() {
		return okay;
	}
	public void setOkay(int okay) {
		this.okay = okay;
	}
	public String getBoss() {
		return boss;
	}
	public void setBoss(String boss) {
		this.boss = boss;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getNfile() {
		return nfile;
	}
	public void setNfile(String nfile) {
		this.nfile = nfile;
	}
	
	
	
}
