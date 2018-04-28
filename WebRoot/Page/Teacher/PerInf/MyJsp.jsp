<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>

<html>
<head>
	<base href="<%=basePath%>">
	<link rel="stylesheet" href="./CSS/Login_alert/2.css" type="text/css">
	<script type="text/javascript" src="./JS/login_alert_1.js">var f = $.noConflict(true);</script>
    <script type="text/javascript" src="./JS/login_alert_2.js">var g = $.noConflict(true);</script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js">var h = $.noConflict(true);</script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">   
<style>
fieldset {padding:0;border:0;margin-left:500px;margin-top:100px}
#user {margin-left:700px; margin-bottom:150px}
#submit1 {margin-left:200px;margin-bottom:150px;height:40px}
</style>
<script>
 $().ready(function() {
 $("#form1").validate({
        rules: {
   name:{
   required:true,
   maxlength:20,
   minlength:1,
   },
   workernumber:{
   required:true,
   max:99999999,
   min:10000000,
   },
   tel:{
   required:true,
   maxlength:11,
   minlength:11,
   },
   email: {
    required: true,
    email: true
   }
   },
   		messages:{
   	name:{
   	required:"请输入姓名",
   	maxlength:"名字过长",
   	minlength:"名字过短",
   	},
   	workernumber:{
   	required:"请输入职工号",
   	max:"职工号错误",
   	min:"职工号错误",
   	},
   	tel:{
   	required:"请输入常用手机号",
   	maxlength:"手机号错误",
   	minlength:"手机号错误",
   	},
   	email:{
   	required:"请填写邮箱",
   	email:"请输入正确的email地址",
   	}
   	}
   });
   }); 
   $(function(){
	function addbutton(){
	  if (document.getElementById("name").readOnly==false)
	  {
	  $("#fieldset").append("<input type='submit'  value='确定' name='' id='submit1' >");
	  }
	  }
 	$("#submit1")
 	  .button()
 	  .click(function(){
 	  $("#user").show();
 	  });
 	  
    $( "#user" )
      .button()
      .click(function() {
        document.getElementById("name").readOnly=false;
		document.getElementById("gender").disabled=false;
		document.getElementById("workernumber").readOnly=false;
		document.getElementById("title").disabled=false;
		document.getElementById("type").disabled=false;
		document.getElementById("tel").readOnly=false;
		document.getElementById("email").readOnly=false;
		addbutton();
		$("#user").hide();
      });
      });
</script>
</head>
<body>

<div id="users-form" title="个人信息">
  <form id="form1"  style="line-height:35px" class="form-inline">
  <fieldset id="fieldset" >
    <label for="name" class="form-label" >姓名:
    <input type="text" style="height:28px" name="name" id="name" class="form-control" value="" readonly="readonly" ></label><br/>
    <label for="gender" class="form-label">性别:
    <select class="pulldown" name="gender" id="gender" class="form-control"  disabled="disabled"> 
			<option value="男">男</option> 
			<option value="女">女</option>		
	</select> </label><br/>
    <label for="workernumber" class="form-label">职工号:
	<input type="text" style="height:28px" name="workernumber" id="workernumber"  class="form-control" value="" readonly="readonly" ></label><br/>
    <label for="title" class="form-label">职称:
    <select class="pulldown" name="title" id="title" class="form-control" disabled="disabled"> 
			<option value="教授">教授</option> 
			<option value="副教授">副教授</option>
			<option value="讲师">讲师</option>	
	</select> </label><br/>
    <label for="type" class="form-label">类型:
    <select class="pulldown" name="type" id="type" class="form-control" disabled="disabled"> 
			<option value="科研教学型">科研教学型</option> 
			<option value="教学科研型">教学科研型</option>	
	</select> </label><br/>
    <label for="tel" class="form-label">TEL:
    <input type="text" style="height:28px" name="tel" id="tel"  class="form-control" value="" readonly="readonly" ></label><br/>  
    <label for="email" class="form-label">Email:
    <input type="text" style="height:28px" name="email" id="email"  class="form-control"value="" readonly="readonly"> </label><br/>  
  </fieldset>
  </form>
  </div>
	<button id="user" >修改</button>
</body>
</html>
