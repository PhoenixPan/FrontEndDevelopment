<%@ page import="java.sql.*" %>
<html>
<head><title>Record Feedback</title></head>
<body>
<%
	boolean isPost = "POST".equals(request.getMethod());
	if(isPost) {
		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		
		final String DB_NAME = "feedback";  
		final String DB_USER = "root";
		final String DB_PWD = "1538";
		final String URL = "jdbc:mysql://localhost/" + DB_NAME + "?autoReconnect=true&useSSL=false";
		
		Connection conn;
		Class.forName(JDBC_DRIVER);
		conn = DriverManager.getConnection(URL, DB_USER, DB_PWD);
		
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			String tableName = "feedback";
			String rating = request.getParameter("rating"); 
			String comment = request.getParameter("comment");
			String sql = "INSERT INTO " + tableName + " (rating, comment) VALUES (?, ?)";
			PreparedStatement preparedStmt = conn.prepareStatement(sql);
			preparedStmt.setString (1, rating);
			preparedStmt.setString (2, comment);
			preparedStmt.execute();
			%>
			<p>New rating received.</p>
			<%
		} catch (SQLException e) {
			out.println(e.getMessage());
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					out.println(e.getMessage());
				}
			}
			response.setHeader("Access-Control-Allow-Origin","*");
		}
	}
%>	
</body>
</html>
