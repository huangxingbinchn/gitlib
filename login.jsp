<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<%
	Cookie[] cookies = request.getCookies();
    
	String webapp = "portal";
    
	String project = "中国移动4G视频监控联网平台";
	String bgheader = "portal";
    
	if (cookies != null) {
	    for (int i=0; i<cookies.length; i++) {
	    	if (cookies[i].getName().equals("webapp")) {
	    		webapp = cookies[i].getValue();    		
	    	}
	    }
	}
	
	int marginLeft= -280;
	
	if ("uspp".equals(webapp)) {
    	project = "中国移动4G视频监控联网平台";	
    	bgheader = "portal";
    	marginLeft = -360;
    }
    
    if ("casedb".equals(webapp)) {
    	project = "公安视频图像信息库";	
    	bgheader = "casedb";
    }   
    
    if ("ecars".equals(webapp)) {
    	project = "公安涉车犯罪侦查系统";	
    	bgheader = "ecars";
    }   
    
    if ("uscp".equals(webapp)) {
    	project = "公安实战平台";	
    	bgheader = "casedb";
    	marginLeft = -200;
    }
%>

<title><%=project%></title>
<link rel="stylesheet" href="/ui/plugins/font-images/font.css" >
<link href='/portal/css/login.css' rel='stylesheet' type='text/css'>
<script>
//设置顶层窗口为登录页面
if( window.top.location.href != window.location.href ) {
	window.top.location.href = window.location.href;
}
</script>
</head> 

<body scroll="no" style="overflow: hidden">

	<div class="header <%=bgheader%>">
		<div class="inside" style="margin-left: <%=marginLeft%>px">
		<img class="logo" src="../images/start-screen/logo2.png" alt="">
			<h1 id="project"><%=project%></h1>
		</div>
	</div>
  
 	<div class="main">     
		<div class="right">

      		<div class="user login-input input-group">
      			<span class="icon-user3"></span>
      			<input class="dinput" type="text" id="username" name="username"/>
      			<span class="data-alt">账号</span>
      		</div>
      		<div class="pwd login-input input-group">
      			<span class="icon-lock"></span>
      			<input class="dinput" type="password" id="passwordTxt" name="password"/>
       			<span class="data-alt">密码</span>     			
      		</div>  
      		<div class="relogin input-group">
                <button type="submit" id="register-submit-btn" class="dbtn01">登录</button>
               	<button  class="dbtn02" >PKI</button>
       		</div>
       		<div class="remember">
	       		<span><input class="" type="checkbox">记住我</span>
	       		<a id="downSoftware" target="_blank" href="/portal/login/downSoftware.html">下载ocx控件</a>
       		</div>      		
 		</div>
  	</div>
 
    <div class="footer"><br> 
<!--		兼容浏览器 IE8 以上，最佳分辨率 1280 x 800 <br>© Copyright 2014 佳都科技股份有限公司 -->
 				兼容浏览器 IE8 以上，最佳分辨率 1280 x 800
        <form id="loginForm" name="loginForm" method="post" action="j_security_check">
	       	<input type="hidden" id="j_username" name="j_username" value="">
	    	<input type="hidden" id="j_password" name="j_password" value="">
		</form>
	</div>
    
</body>


<script src="/ui/plugins/jquery.min.js" type="text/javascript"></script>     
<script src="/ui/plugins/eapui/eapui.js" type="text/javascript"></script>
 
<script src="/portal/js/cookie.js"></script> 
<script src="/portal/js/login.js"></script> 
 
</html>
