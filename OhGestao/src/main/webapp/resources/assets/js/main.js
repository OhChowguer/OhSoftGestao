function delUsuario(id) {
	
	
	var r = confirm("Realmente gostaria de deletar o Usuario?");
	if (r == true) {
		$.post("/ohgestao/usuario/deletar/" + id, {

		}, function(result) {

			if (result == "ok") {
				alert("Usuario deletado")
				window.location.href = "/ohgestao/usuario/listar";
				
			} else {
				alert("Não foi possivel deletar o usuario")
			}

		});
	} else {
	    txt = "Cancelado";
	}
	

	
}