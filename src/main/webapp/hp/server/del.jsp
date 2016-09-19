<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%
    String path = request.getContextPath();
    Thread.sleep( 2000 );
    PrintWriter o = response.getWriter();
    o.write( "删除成功" );
    o.close();
%>
