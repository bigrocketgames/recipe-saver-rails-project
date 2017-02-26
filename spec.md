# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many Collections)
- [x] Include at least one belongs_to relationship (Recipe belongs_to User)
- [x] Include at least one has_many through relationship (Recipe has_many Ingredients through Quantities)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (quantities.amount)
- [x] Include reasonable validations for simple model objects (User, Recipe, Ingredient, Collection)
- [x] Include a class level ActiveRecord scope method ( Recipes.most_collected URL: /recipes/most_collected)
- [x] Include a nested form writing to an associated model using a custom attribute writer (user/:user_id/recipes/new, Quantity)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [ ] Include third party signup/login (Devise/OmniAuth)
- [x] Include nested resource show or index (user/:user_id/collections, user/:user_id/recipes)
- [x] Include nested resource "new" form (user/:user_id/recipes/new)
- [x] Include form display of validation errors (form user/:user_id/recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
