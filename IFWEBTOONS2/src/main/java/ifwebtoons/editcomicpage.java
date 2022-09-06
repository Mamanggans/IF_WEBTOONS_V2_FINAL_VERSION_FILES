package ifwebtoons;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@WebServlet("/admin/editservletmp")
@MultipartConfig(maxFileSize = 16177215)
public class editcomicpage extends HttpServlet{
String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String a,b,c,d,e,f;
		a=request.getParameter("comic_id");
		b=request.getParameter("comic_name");
		c=request.getParameter("creator");
		d=request.getParameter("episode_title");
		e=request.getParameter("chapter_num");
		f=request.getParameter("page_num");
		int img=Integer.parseInt(request.getParameter("a"));
		InputStream is=null;
		PreparedStatement pstmt = null; 
		Part file =request.getPart("files");
		is = file.getInputStream();
		Connection con=null;
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con= DriverManager.getConnection(connectionURL, "root", "");
			if(img==1) {
				pstmt = con.prepareStatement("UPDATE `comic` SET `id`=?,`comic_id`=?,`comic_name`=?,`creator`=?,`episode_title`=?,`chapter_num`=?,`page_num`=?,`img`=? WHERE id="+id);
				pstmt.setInt(1, id);
				pstmt.setString(2, a);	
				pstmt.setString(3, b);
				pstmt.setString(4, c);
				pstmt.setString(5, d);
				pstmt.setString(6, e);
				pstmt.setString(7, f);
				
				pstmt.setBlob(8, is);			
				pstmt.executeUpdate();			
			}else {
				pstmt = con.prepareStatement("UPDATE `comic` SET `id`=?,`comic_id`=?,`comic_name`=?,`creator`=?,`episode_title`=?,`chapter_num`=?,`page_num`=? WHERE id="+id);
				pstmt.setInt(1, id);
				pstmt.setString(2, a);						
				pstmt.setString(3, b);
				pstmt.setString(4, c);
				pstmt.setString(5, d);
				pstmt.setString(6, e);
				pstmt.setString(7, f);	
				pstmt.executeUpdate();
			}			
			getServletContext().getRequestDispatcher("/comicpage/edit.jsp").forward(request, resp);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			System.out.print(e1);
		}finally {
			if(con !=null) {
				 try {
	                    con.close();
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                }
			}
		}
		
	}

}