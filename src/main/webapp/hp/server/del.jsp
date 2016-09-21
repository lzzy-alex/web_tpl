<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%
    Thread.sleep( 2000 );
    PrintWriter o = response.getWriter();
    o.write( "删除成功" );
    o.close();
%>
