$(function () {
  $(".hide_user_recipes").hide();
  $(".get_user_recipes").on("click", function(e) {
    e.preventDefault();

    $.get(this.href, function(json) {
      json.forEach(function(recipe) {
        $("div#recipes ol#recipe_list").append("<li>" + "<a href=/user/" + recipe.user.id + "/recipes/" + recipe.id + ">" + recipe.name + "</a></li>");
      }, this);
    });
  $(".get_user_recipes").hide();
  $(".hide_user_recipes").show();
  });


  $(".hide_user_recipes").on("click", function(e) {
    e.preventDefault();

    $("div#recipes ol#recipe_list").empty();
    $(".get_user_recipes").show();
    $(".hide_user_recipes").hide();
  });
});