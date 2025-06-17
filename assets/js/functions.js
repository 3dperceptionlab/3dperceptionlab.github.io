document.addEventListener("DOMContentLoaded", function () {
  const items = document.querySelectorAll(".carousel-item");
  const prevBtn = document.querySelector(".carousel-nav.left");
  const nextBtn = document.querySelector(".carousel-nav.right");
  let current = 0;

  function updateCarousel() {
    items.forEach((item, index) => {
      item.classList.toggle("active", index === current);
    });
  }

  function goToNext() {
    current = (current + 1) % items.length;
    updateCarousel();
  }

  function goToPrev() {
    current = (current - 1 + items.length) % items.length;
    updateCarousel();
  }

  prevBtn.addEventListener("click", goToPrev);
  nextBtn.addEventListener("click", goToNext);

  // Autoplay every 2 minutes (120,000 ms)
  setInterval(goToNext, 120000);

  updateCarousel(); // Inicializar
});

