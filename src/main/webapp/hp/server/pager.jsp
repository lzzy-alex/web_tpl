<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.ucap.toolkit.web.Pager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ucap.toolkit.web.ServletUtil"%>

<%
    String url = "hp/list.jsp";
    Pager p = new Pager( request, url, new ArrayList(0), new ArrayList(0) );
    
    ServletUtil u = new ServletUtil(request, response);
    u.writeText(p.toHtml());
%>
