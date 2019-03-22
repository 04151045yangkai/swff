<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script src="jquery/jquery-3.2.1.min.js"></script>
 <script type="text/javascript">
	$(document).ready(function() {
		$(".flip").click(function() {
			$(".panel").slideToggle(2500);
		});
	});
</script>
  <style type="text/css">
   body{
    background-color: #F2F2F2;
   }
   div{
   font-size:22px;
   font-family:"楷体";
   text-align:center;
   color:#4CB8A0;
   margin-top:-10px;
   margin-left:-10px;
   width:1210px;
   height:580px;
   border:1px #E4EDF0 solid;
   background-color: #E4EDF0;
   }
   #p1{
   font-size:45px;
   }
   pre{
   margin-top:80px;
    font-family:"楷体";
   }
   p{
     color:#4CB8A0;
   font-family:"楷体";
    font-size: 22px;
   }
   div.panel,p.flip {
	margin: 0px;
	padding: 5px;
	  color:#4CB8A0;
	text-align: center;
	background-color: #E4EDF0;
	border: solid 1px #c3c3c3;
}

div.panel {
	height:512px;
	display: none;
}
  </style>
  </head>
  <body>

	<div class="panel">
	 <p id="p1">西部开源</p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;西安源代码软件技术服务有限公司下属的西部开源技术中心，座落于西部历史文化名城西安，是由一群热爱
      开源技术，热衷于Linux 技术推广的有志青年共同发起组织成立的西部首家公共服务机构.中心以推动Linux在西部
      的发展为目标，为西安、西部地区乃至全国电子商务与信息化建设提供Linux 技术支持服务。</p>
	<img src="img/logo.jpg" alt="logo"/>
	</div>

	<p class="flip">公司简介↓</p>

<!--  
    <div>
      <p>西部开源</p>
      <pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;西安源代码软件技术服务有限公司下属的西部开源技术中心，座落于西部历史文化名城西安，是由一群热爱
      开源技术，热衷于Linux 技术推广的有志青年共同发起组织成立的西部首家公共服务机构.中心以推动Linux在西部
      的发展为目标，为西安、西部地区乃至全国电子商务与信息化建设提供Linux 技术支持服务。</pre>
    </div>
   -->
  </body>
</html>
