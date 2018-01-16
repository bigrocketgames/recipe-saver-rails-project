function renderIngredients(quantities) {
    var ingredientList = nil;
    quantities.forEach(function(q) {
        ingredientList += `<li class="ingredient">${q.amount} ${q.ingredient.name}</li>`;
    }, this);
    return ingredientList;
}

$(function() {
    $(".recipe-link").on("click", function(e) {
        e.preventDefault();
        $.get(this.href, function() {
        }).done(function(json) {
            // empty the div if any recipe had already been clicked.
            $(".recipe-details").empty();
            $(".recipe-details").append(
                `
                <h2 class="recipe-name">${json.name}</h2>
                <p class="recipe-description">${json.description}</p>
                <h4>Ingredients</h4>
                <ul class="recipe-ingredients">
                    ${renderIngredients(json.quantities)}
                </ul>
                <h4 class="instructions">Instructions</h4>
                <p class="recipe-instructions">${json.instructions}</p>
                `
            );
        }).fail(function(response) {
            alert("Something broke", response);
        });
    });
});