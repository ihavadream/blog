package entity;

public class Photo {
	private static final long serialVersionUID = 1L;
	private int id;
	private String photo_sendtime;
	
	public Photo(String sendtime){
		this.photo_sendtime=sendtime;
	}
	public Photo(int id,String sendtime){
		this.id=id;
		this.photo_sendtime=sendtime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPhoto_sendtime() {
		return photo_sendtime;
	}
	public void setPhoto_sendtime(String photo_sendtime) {
		this.photo_sendtime = photo_sendtime;
	}
	@Override
	public String toString() {
		return "photoBean [id=" + id + ", photo_sendtime=" + photo_sendtime
				+ "]";
	}
}
