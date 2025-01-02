<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.RequestDispatcher" %>

<%
    RequestDispatcher dispatcher = request.getRequestDispatcher("/composants");
    dispatcher.forward(request, response);
%>
