// Menu Hamburguer
let menu = document.getElementById('menu')
let botao = document.getElementById('menuButton')

botao.addEventListener('click', function () {
    if (menu.style.display === 'block') {
        menu.style.display = 'none';
    }else {
        menu.style.display = 'block';
    }
});

// Contato
function enviar() {
    const nome = document.getElementById('nome').value.trim();
    const email = document.getElementById('email').value.trim();
    const area = document.getElementById('area').value.trim();

    if (!nome || !email || !area) {
        window.alert('Por favor, preencha todos os campos!')
    }else {
        window.alert('Mensagem enviada com sucesso!')
    }
}


//slide 
let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}