document.addEventListener("DOMContentLoaded", function() {
	var form = document.getElementById('alugar-form')
	var select = document.getElementById('filme-select')
	var alugadosList = document.getElementById('alugados')
	
	form.addEventListener('submit', function(event) {
		event.preventDefault()
		var filmesSelecionados = select.value
		alugadosList.innerHTML += '<li>' + filmesSelecionados + '</li>'
	})
})