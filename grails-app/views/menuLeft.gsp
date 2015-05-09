<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <g:javascript library="application" />
        <script src="/Monotributo/js/jquery/jquery-1.5.1.min.js" type="text/javascript"></script>       
        <script src="/Monotributo/js/jquery/jquery-ui-1.8.12.custom.min.js" type="text/javascript"></script>       
        <link rel="stylesheet" href="${resource(dir:'css/ui-lightness',file:'jquery-ui-1.8.12.custom.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'menu.css')}" />

		<style type="text/css">
			body{background:#534741;font-family:Arial, Helvetica, sans-serif; font-size:14px;}
			ul, li{margin:0; padding:0; list-style:none;}
		</style>
		<script type="text/javascript"> 
			$(document).ready(function () {
				$("ul.menu_body li:even").addClass("alt");
			 });  
		</script>	
		<script type="text/javascript"> 
			$(document).ready(function () { 
				$("ul.menu_body li:even").addClass("alt");  
				$('img.menu_head').click(function () {  
					$('ul.menu_body').slideToggle('medium');
				  }); 
			}); 
		</script>
		<script type="text/javascript"> 
			$(document).ready(function () { 
				$("ul.menu_body li:even").addClass("alt");  
				$('img.menu_head').click(function () { 
					$('ul.menu_body').slideToggle('medium'); 
				});  
				$('ul.menu_body li a').mouseover(function () { 
					$(this).animate({ fontSize: "14px", paddingLeft: "20px" }, 50 );
				 });

				$('ul.menu_body li a').mouseout.(function () { 
					$(this).animate({ fontSize: "12px", paddingLeft: "10px" }, 50 );
				 });				 
		   }); 
		</script>
    </head>

    <body onload="MM_preloadImages('imagenes/btn_generico.jpg')">
		<ul class="menu_body"> 
			<li><a href="main.gsp" target="bodyFrame">Cliente</a></li> 
			<li><a href="emptypage.gsp" target="bodyFrame">About Us</a></li> 
			<li><a href="emptypage.gsp" target="bodyFrame">Portfolio</a></li>  
			<li><a href="emptypage.gsp" target="bodyFrame">Clients</a></li> 
			<li><a href="emptypage.gsp" target="bodyFrame">Blog</a></li> 
			<li><a href="emptypage.gsp" target="bodyFrame">Support Forums</a></li>  
			<li><a href="emptypage.gsp" target="bodyFrame">Gallery</a></li> <li><a href="#">Contact Us</a></li>			
		</ul>    
    </body>
</html>