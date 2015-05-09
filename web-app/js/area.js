			function updatePartidoDropdown(e) {
				// The response comes back as a bunch-o-JSON
				var partidos = eval("(" + e.responseText + ")")	// evaluate JSON
		
				if (partidos) {
					var rselect = document.getElementById('partido')
		
					// Clear all previous options
					var l = rselect.length
		
					while (l > 0) {
						l--
						rselect.remove(l)
					}
					/*para crear una opcion en blanco*/
					/*
					*/
					var opt = document.createElement('option');
					opt.text = "   "
					opt.value = 10000
				  	try {
				    	rselect.add(opt, null) // standards compliant; doesn't work in IE
				  	}
			  		catch(ex) {
			    		rselect.add(opt) // IE only
			  		}
					// Rebuild the select
					for (var i=0; i < partidos.length; i++) {
						var partido = partidos[i]
						var opt = document.createElement('option');
						opt.text = partido.descripcion
						opt.value = partido.id
					  	try {
					    	rselect.add(opt, null) // standards compliant; doesn't work in IE
					  	}
				  		catch(ex) {
				    		rselect.add(opt) // IE only
				  		}
					}
				}
			}
		
			function updateLocalidadDropdown(e) {
				// The response comes back as a bunch-o-JSON
				var localidades = eval("(" + e.responseText + ")")	// evaluate JSON
		
				if (localidades) {
					var rselect = document.getElementById('localidad')
		
					// Clear all previous options
					var l = rselect.length
		
					while (l > 0) {
						l--
						rselect.remove(l)
					}
		
					// Rebuild the select
					for (var i=0; i < localidades.length; i++) {
						var localidad = localidades[i]
						var opt = document.createElement('option');
						opt.text = localidad.descripcion
						opt.value = localidad.id
					  	try {
					    	rselect.add(opt, null) // standards compliant; doesn't work in IE
					  	}
				  		catch(ex) {
				    		rselect.add(opt) // IE only
				  		}
					}
				}
			}
			
			// This is called when the page loads to initialize city
			//var zselect = document.getElementById('country.name')
			//var zopt = zselect.options[zselect.selectedIndex]
			//${remoteFunction(controller:"country", action:"ajaxGetCities", params:"'id=' + zopt.value", onComplete:"updateCity(e)")}
		
