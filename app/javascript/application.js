// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "flatpickr" from "flatpickr";
import "flatpickr/dist/flatpickr.css";


document.addEventListener("turbolinks:load", () => {
    flatpickr(".datetime", {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      time_24hr: true
    });
  });
  
  