<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/descfilm"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
connection = DriverManager.getConnection(connectionURL, "root", "");
Statement st= connection.createStatement();
ResultSet rs=null;
String id=null;
int a=0;
try{a =Integer.parseInt(request.getParameter("c"));
	
}catch(Exception e){
	
}
if(a==1){
	session.setAttribute("eds", "");
	response.sendRedirect("comicpage.jsp");
}else{
	if(session.getAttribute("eds")==""|| session.getAttribute("eds")==null){
		id=request.getParameter("movie").toString();
		session.setAttribute("eds", id);
		response.sendRedirect("comicpage.jsp");
	}else{
		session.setAttribute("eds", "");
		response.sendRedirect("comicpage.jsp");
	}
}


%>