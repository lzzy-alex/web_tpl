<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.lang.String"%>
<%
    Thread.sleep( 2000 );
    PrintWriter o = response.getWriter();
    o.write( "<script>parent.callback('1', '操作成功', 'list.jsp' )</script>" );
    o.close();
%>
