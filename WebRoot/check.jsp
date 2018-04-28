<%@ page language="java" import="java.util.*,test.DB,javax.servlet.http.HttpServletResponse" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="text/javascript" src="jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="checkcode.js"></script>
	-->



  
  </head>
  <body>

    <%
    	int error=0;
		int vitalnum = 0;

		
    	String p=request.getParameter("password");
    	String u=request.getParameter("username");
    	String f=request.getParameter("checkcode");
    	String test = request.getParameter("test");


    		
    		if(f==""){
    			vitalnum=1;
    			response.sendRedirect("index.jsp?error=1");
    			
    		}
    		else if(!f.equals(test)){
    			vitalnum=1;
    			response.sendRedirect("index.jsp?error=2");
    		}	 
    	else if(p==""){
    		vitalnum=1; 
    		response.sendRedirect("index.jsp?error=3");
    		 	
    	}
    	else if(u==""){
    		vitalnum=1;
    		response.sendRedirect("index.jsp?error=4"); 
    	}
    	else{
    		DB c=new DB();
    		/*没有验证用户类型！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！*/
    		String s=c.userCheck(u, p);
    		if(s.equals("1") &&  f.equals(test) && vitalnum==0){
    			response.sendRedirect("./Page/Teacher/TeacherHomepage.jsp?name="+u);
    		}
    		else {
    			response.sendRedirect("index.jsp?error=5");
    		//out.print("<script language='javascript'>alert('User&Password Wrong!!');window.location.href='index.jsp';</script>");
    		}
    	}

		/*
    	System.out.println(p);
    	System.out.println(u);
    	System.out.println(f);
    	System.out.println(test);
		*/


     %>
  </body>
</html>
