
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@include  file="submit.html" %>

<%
try{
String f_name = request.getParameter("firstname");
String l_name = request.getParameter("lastname");
String email = request.getParameter("email");
String pno = request.getParameter("pno");
String position = request.getParameter("position");
String location = request.getParameter("location");


Class.forName("com.mysql.jdbc.Driver"); // MySQL database connection
String url = "jdbc:mysql://localhost/87-91(miniproject)";
java.sql.Connection con = DriverManager.getConnection(url,"root","");
PreparedStatement pst;
//insert into volunteer values()

pst=con.prepareStatement("insert into volunteer values(?,?,?,?,?,?)");
pst.setString(1,f_name);
pst.setString(2,l_name);
pst.setString(3,email);
pst.setString(4,pno);
pst.setString(5,position);
pst.setString(6,location);
Statement st;

int r=pst.executeUpdate();
st=con.createStatement();


}
catch(Exception e){
System.out.println(e);
out.println("Something went wrong !! Please try again");
}
%>