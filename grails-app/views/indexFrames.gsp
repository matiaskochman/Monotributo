<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
<frameset rows="120px,*" border="0">
<frame src="secure/headFrame.jsp" name="head" noresize scrolling="no">
<frame src="secure/menuLeft.jsp" name="menuLeft" noresize scrolling="no">
<frame src="secure/emptypage.jsp" name="bodyFrame" noresize scrolling="no">
</frameset>
-->
<html>
	<head>
        <script src="/Monotributo/js/jquery/jquery-1.5.1.min.js" type="text/javascript"></script>       
        <script src="/Monotributo/js/jquery/jquery-ui-1.8.12.custom.min.js" type="text/javascript"></script>       
        <link rel="stylesheet" href="${resource(dir:'css/ui-lightness',file:'jquery-ui-1.8.12.custom.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'menu.css')}" />
        
	</head>
	
	<frameset rows="120px,*" border="0">
	    <frame src="headFrame.gsp" name="head" noresize scrolling=no  >
	    <frameset cols="200px,*"  border="0">
	        <!--frameset cols="145px,*"  border="0"-->
	        <frame src="menuLeft.gsp" name="menuLeft" noresize scrolling=no>
	        <!--frame src="/rge001/resultadoFinal.do?method=botones" name="menuLeft" noresize scrolling=no-->
	        <frame src="emptypage.gsp" name="bodyFrame" noresize scrolling=auto>
	    </frameset>
	
	</frameset>
</html>

