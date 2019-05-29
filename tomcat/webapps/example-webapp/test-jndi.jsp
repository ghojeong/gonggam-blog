<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="javax.naming.*, java.sql.Connection, javax.sql.DataSource" %>
<html><body><pre><%

	Context initCtx = new InitialContext();

	Context envCtx = (Context) initCtx.lookup("java:comp/env");
	if (envCtx != null) {

		DataSource ds = (DataSource) envCtx.lookup("jdbc/board");
		if (ds != null) {
			out.println("DataSource: " + ds.toString());

			Connection conn = ds.getConnection();
			if (conn != null) {
				out.println("Connection: " + conn.toString());

			} else {
				out.println("Connection is null");
			}

		} else {
			out.println("DataSource is null");
		}

	} else {
		out.println("Context 'java:comp/env' is null");
	}
%></pre></body></html>
