# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many Recipes)
- [x] Include at least one belongs_to relationship (Recipe belongs_to User)
- [x] Include at least one has_many through relationship (Recipe has_many Ingredients through Recipe_Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (recipe_ingredients.quantity)
- [x] Include reasonable validations for simple model objects (User, Recipe, Ingredient, Recipe_Ingredient, Collection)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) -- TODO -- Pundit
- [ ] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (users/2/collections, users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
