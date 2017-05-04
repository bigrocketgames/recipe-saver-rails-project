function Review(attributes) {
  this.title = attributes.title;
  this.content = attributes.content;
};

Review.prototype.renderLI = function() {

}

$(function () {
  $("form.new_review").on("submit", function(e) {
    e.preventDefault();
    
    var $form = $(this);
    var action = $form.attr("action");
    var params = $form.serialize();

    $.ajax({
      url: action,
      data: params,
      dataType: "json",
      method: "POST"
    })
    .done(function(json) {
      console.log("This worked!!");
      var review = new Review(json);
    })
    .fail(function(response) {
      console.log("Something isn't working", response);
    })

  });
});