package entity;

public class Article {
	private static final long serialVersionUID = 1L;
	private int id;
	private String article_title;
	private String article_content;
	private int article_count;
	
	public Article(String article_title, String article_content, int article_count) {
		
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_count = article_count;
	}
	public Article(int id,String article_title, String article_content, int article_count) {
		this.id=id;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_count = article_count;
	}
	public Article() {
		//this("����˼","��ɽ�࣬Խɽ�ࡣ������ɽ����ӭ��˭֪����飿����ӯ�����ӯ���޴�ͬ�Ľ�δ�ɡ���ͷ����ƽ��",0);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	
	public int getArticle_count() {
		return article_count;
	}
	public void setArticle_count(int article_count) {
		this.article_count = article_count;
	}
	@Override
	public String toString() {
		return "Article [id=" + id + ", article_title=" + article_title
				+ ", article_content=" + article_content + ", article_count="
				+ article_count + "]";
	}
}
