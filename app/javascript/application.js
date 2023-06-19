// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

document.addEventListener("DOMContentLoaded", () => {
  const menuButton = document.querySelector(".menu-button");
  const menuList = document.querySelector(".menu-list");

  menuButton.addEventListener("click", () => {
    menuList.classList.toggle("hidden")
  })
})
