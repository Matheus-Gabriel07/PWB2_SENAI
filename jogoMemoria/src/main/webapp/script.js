const cards = document.querySelectorAll('.memory-card');
 
let hasFlippedCard = false;
let lockBoard = false;
let firstCard, secondCard;
 
function flipCard() {
  if (lockBoard) return;
  if (this === firstCard) return;
 
  this.classList.add('flip');
 
  if (!hasFlippedCard) {
    hasFlippedCard = true;
    firstCard = this;
 
    return;
  }
 
  secondCard = this;
  checkForMatch();
}
 
function checkForMatch() {
  let isMatch = firstCard.dataset.personagem === secondCard.dataset.personagem;
 
  isMatch ? disableCards() : unflipCards();
}
 
function disableCards() {
  firstCard.removeEventListener('click', flipCard);
  secondCard.removeEventListener('click', flipCard);
  resetBoard();
  checkWin();
}
 
function unflipCards() {
  lockBoard = true;
 
  setTimeout(() => {
    firstCard.classList.remove('flip');
    secondCard.classList.remove('flip');
 
    resetBoard();
  }, 500);
}
 
function resetBoard() {
  [hasFlippedCard, lockBoard] = [false, false];
  [firstCard, secondCard] = [null, null];
}
 
function checkWin() {
  const allFlipped = [...cards].every(card => card.classList.contains('flip'));
  if (allFlipped) {
    alert('Parabéns! Todos os cartões foram virados.');
    // Redirecione o usuário para outra tela
    window.location.href = 'Index.jsp';
  }
}
 
(function shuffle() {
  cards.forEach(card => {
    let randomPos = Math.floor(Math.random() * 14);
    card.style.order = randomPos;
  });
})();
 
cards.forEach(card => card.addEventListener('click', flipCard))