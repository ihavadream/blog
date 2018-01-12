package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import util.JdbcUtil;
import entity.Article;

public class ArticleDao {
	public void save(Article article) throws SQLException{
		Connection con=JdbcUtil.getConnection();
		String sql="insert into tb_article (article_title,article_content,article_count) values(?,?,?)";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, article.getArticle_title());
		pst.setString(2, article.getArticle_content());
		pst.setInt(3, article.getArticle_count());
		pst.execute();
		pst.close();
		JdbcUtil.close(con);
	}
	public Collection<Article> QueryAll(){
		Collection<Article> c1=new ArrayList<Article>();
		try {
			Connection con=JdbcUtil.getConnection();
			Statement st=con.createStatement();
			String sql="select * from tb_article";
			ResultSet rst=st.executeQuery(sql);
			while(rst.next()){
				int id=rst.getInt("id");
				String article_title=rst.getString("article_title");
				String article_content=rst.getString("article_content");
				int article_count=rst.getInt("article_count");
				Article a=new Article(); 
				a.setId(id);
				a.setArticle_title(article_title);
				a.setArticle_content(article_content);
				a.setArticle_count(article_count);
				c1.add(a);
			}
			rst.close();
			st.close();
			JdbcUtil.close(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c1;
	}
	
}
