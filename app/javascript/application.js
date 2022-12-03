// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", function () {
    let modalBtn = document.querySelector('.generate-shopping-list-btn')
let window_modal = document.querySelector('.generate-shopping-list-container')
let close = document.querySelector('.close-btn')
    modalBtn.addEventListener('click', () => {
        window_modal.style.top = "25%";
    });
    
    close.addEventListener('click', () => {
        window_modal.style.top = "-100%";
    })
});