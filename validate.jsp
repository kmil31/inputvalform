<%@page language="java"  %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<%@page session="true"%>


<html>



<% String namepattern ="^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$"; 
   String matricpattern="^[0-9]{7}$";
   String emailpattern="^[a-zA-Z0-9_!#$%&’*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";
   String phonepattern="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\n\b/0-9]*$";
   String preventSql="^";
   String name=request.getParameter("name");
   String matricno=request.getParameter("matricno");
   String email=request.getParameter("email-address");
   %>	

<%  Pattern p1=Pattern.compile(namepattern);
	Pattern p2=Pattern.compile(matricpattern);
	Pattern p3=Pattern.compile(emailpattern);
	Matcher m=p1.matcher(name);
	Matcher m2=p2.matcher(matricno);
	Matcher m3=p3.matcher(email);

	boolean succ1=m.find();
	boolean succ2=m2.find();
	boolean succ3=m3.find();
	if(succ1==false)
	{
		session.setAttribute("Error","invalid name,is first letter capitalised?");
		response.sendRedirect("form.jsp");
		
	}
	else if(succ2==false)
	{
		session.setAttribute("Error","invalid matric, does it meet 8 character min?");
		response.sendRedirect("form.jsp");

	}
	else if(succ3==false)
	{
		session.setAttribute("Error","invalid email, ");
		response.sendRedirect("form.jsp");
	}		
	out.println(name+"  "+matricno+"  "+email);
	out.println(succ1+""+succ2+""+succ3);

	%>
 







</html>