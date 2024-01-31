let numero  = Math.floor(Math.random() * 10) + 1
let tentativas = 3;

function adivinha() {
	var numInput = document.getElementById("numInput")
	let mensagem = document.getElementById("mensagem")
	let paplpite = parseInt(numInput.value)
	
	if(paplpite === numero) {
		mensagem.textContent = "Parabéns você acertou o número!"
		desabilitarJogo()
	} else {
		tentativas--
		
		if(tentativas == 0) {
			mensagem.textContent = "Fim de jogo! O número correto era " + numero + "."
			desabilitarJogo();
		} else {
			mensagem.textContent = "Tente novamete! VocÊ possui " + tentativas + " tentativas restantes."
		}
	}
}

numInput.value = ''
numInput.focus()

function desabilitarJogo() {
	numInput = document.getElementById("numInput")
	var botao = document.querySelector('button')
	
	numInput.disabled = true;
	botao.disabled = true;
}