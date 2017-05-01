$(function () {
  $("form.new_review").on("submit", function(e) {
    e.preventDefault();
    console.log("This worked!!");
  });
});