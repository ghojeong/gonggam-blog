<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%!

private String getResultSet(java.sql.ResultSet resultSet, boolean displayTables) throws Exception {
	StringBuffer sb = new StringBuffer();
	int columnCount = resultSet.getMetaData().getColumnCount();
	for (int i = 0; i < 1000 && resultSet.next(); i++) {
		for (int j = 1; j <= columnCount; j++) {
			if (displayTables) {
				String result = resultSet.getString(1);
				sb.append("<a href=\"?tab=").append(result).append("\">").append(result).append("</a>");

			} else {
				sb.append(resultSet.getString(j));
				if (j < columnCount) {
					sb.append(" | ");
				}
			}
		}
		sb.append("\n");
	}
	return sb.toString();
}

%>
<html><body><pre><%

	request.setCharacterEncoding("utf-8");
	String table = request.getParameter("tab");

	// For MySQL
	Class.forName("com.mysql.jdbc.Driver");
	String showTables = "show tables";

	//String jdbcUrl  = System.getProperty("JDBC_URL");
	//String jdbcUser = System.getProperty("JDBC_USER");
	//String jdbcPass = System.getProperty("JDBC_PASS");

	String jdbcUrl  = "jdbc:mysql://db:3306/board";
	String jdbcUser = "jspexam";
	String jdbcPass = "jsppw";

	java.sql.Connection conn = java.sql.DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPass);
	System.out.println("conn: " + conn);

	if (conn != null) {
		java.sql.Statement stmt = conn.createStatement();

		boolean displayTables = (table == null);
		java.sql.ResultSet rst = stmt.executeQuery(displayTables ? showTables : "select * from " + table);
		out.println(getResultSet(rst, displayTables));
		conn.close();
	}

%></pre></body></html>
