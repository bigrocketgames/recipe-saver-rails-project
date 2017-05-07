function Review(attributes) {
  var date = new Date(attributes.updated_at);
  this.title = attributes.title;
  this.content = attributes.content;
  this.updated_at = this.dateFormat(date);
};

Review.prototype.renderLI = function() {
  return Review.template(this)
}

Review.prototype.dateFormat = function(date) {
  options = {day: '2-digit', month: '2-digit', year: 'numeric'};
  return date.toLocaleDateString("en-US", options);
}

Review.done = function(json) {
  var review = new Review(json);
  var reviewLi = review.renderLI();
  
  $("ul.review_list").append(reviewLi);
}

Review.fail = function(response) {
  console.log("Something isn't working", response);
}

$(function () {
  Review.templateSource = $("#review-template").html()
  Review.template = Handlebars.compile(Review.templateSource);
  
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
    .done(Review.done)
    .fail(Review.fail)

  });
});