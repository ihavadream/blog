package entity;

public class Views {
	private static final long serialVersionUID = 1L;
	private int id;
	private String author;
	private String content;
	private String sendtime;
	
	public Views(String author,String content,String sendtime){
		this.author=author;
		this.content=content;
		this.sendtime=sendtime;
	}
	public Views(int id,String author,String content,String sendtime){
		this.id=id;
		this.author=author;
		this.content=content;
		this.sendtime=sendtime;
	}
	public Views() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAuthor() {
		return author;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent() {
		return content;
	}
	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}
	public String getSendtime() {
		return sendtime;
	}
	@Override
	public String toString() {
		return "Views [id=" + id + ", author=" + author + ", content="
				+ content + ", sendtime=" + sendtime + "]";
	}
	
}
