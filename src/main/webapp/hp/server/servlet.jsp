<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.lang.String"%>
<%
    String path = request.getContextPath();
    Thread.sleep( 2000 );
    PrintWriter o = response.getWriter();
    o.write( "<script>parent.callback('1', '操作成功', 'list.jsp' )</script>" );
    o.close();
%>
