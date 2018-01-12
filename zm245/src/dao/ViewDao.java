package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import util.JdbcUtil;
import entity.Views;

public class ViewDao {
	
	public Collection<Views> QueryAll(){
		Collection<Views> c1=new ArrayList<Views>();
		try {
			Connection con=JdbcUtil.getConnection();
			Statement st=con.createStatement();
			String sql="select * from tb_notel";
			ResultSet rst=st.executeQuery(sql);
			while(rst.next()){
				int id=rst.getInt("id");
				String author=rst.getString("author");
				String content=rst.getString("content");
				String sendtime=rst.getString("sendtime");
				Views a=new Views(); 
				a.setId(id);
				a.setAuthor(author);
				a.setContent(content);
				a.setSendtime(sendtime);
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
