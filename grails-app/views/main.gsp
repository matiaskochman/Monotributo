<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <g:javascript library="application" />
        <script src="/Monotributo/js/jquery/jquery-1.5.1.min.js" type="text/javascript"></script>       
        <script src="/Monotributo/js/jquery/jquery-ui-1.8.12.custom.min.js" type="text/javascript"></script>       
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css/ui-lightness',file:'jquery-ui-1.8.12.custom.css')}" />
	    <script type="text/javascript">
	    $(document).ready(function(){
	    		$("#tabs").tabs('select',0);		    
	    		$("#tabs").tabs({disabled: [1,2,3,4,5]}); //es la manera de deshabilitar al inicio
			    $("#tabs").tabs({ spinner: 'Retrieving data...', fx: { opacity: 'toggle' } }).find('div').css('background-color','white');
			    $("#tabs").tabs({
			    	   select: function(event, ui) {
									 var xhReq = new XMLHttpRequest();
									 xhReq.open("POST", "monotributista/showMonotributistaSession", false);
									 xhReq.send(null);
									 var serverResponse = xhReq.responseText;
									 var indexAnterior = ui.index;
									if(serverResponse !='null'&&ui.index !=0){
							        	$("#tabs").tabs( "option", "disabled", [] );		        	
									}else{
										$("#tabs").tabs( "option", "disabled", [1,2,3,4,5] );
										//$("#tabs").tabs({disabled: [1,2,3,4,5]});
									}
				    			}
			    	});			    
		 });	 
	    	    	
	    </script>
	    <script type="text/javascript">
			
			function recargarTabs(){
				
				 var xhReq = new XMLHttpRequest();
				 xhReq.open("POST", "monotributista/showMonotributistaSession", false);
				 xhReq.send(null);
				 var serverResponse = xhReq.responseText;
				if(serverResponse !='null'){
		        	$("#tabs").tabs( "option", "disabled", [] );		        	
				}else{
					//$("#tabs").tabs('select',0);
					$("#tabs").tabs( "option", "disabled", [1,2,3,4,5] );
				}
			}
	    </script>
        
    </head>
    <body>
	    <div id="tabs" class="tabs" style="margin:20px auto; width:100%">
	      <ul>
	        <li><a href="monotributista/list2">Principal</a></li>
	        <li><a  href="domicilio/listaDomiciliosDeMonotributista">Domicilio</a></li>
	        <li><a href="grupoFamiliar/listaGruposFamiliaresDeMonotributista">Grupo Familiar</a></li>
	        <li><a href="establecimiento/listaEstablecimientosDeMonotributista">Local / Establecimiento</a></li>
	        <li><a href="tituloProfesional/listaTituloProfesionalDeMonotributista">Titulo Profesional</a></li>
	        <li><a href="vehiculo/listaVehiculosDeMonotributista">Vehiculo</a></li>
	      </ul>
	    </div>
	    
    </body>
</html>
