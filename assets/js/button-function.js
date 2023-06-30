const hamburger = document.querySelector(".hamburger");
const mobile_menu = document.querySelector(".mobile-menu");

hamburger.addEventListener("click", function () {
    this.classList.toggle("is-active");
    mobile_menu.classList.toggle("is-open");
  });

const back_to_top = document.querySelector(".back-to-top");

back_to_top.addEventListener("click", function (event) {
    event.preventDefault();
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  });