class RecipePolicy < ApplicationPolicy

  class Scope < scope
    def resolve
      scope.order(collected: :desc)
    end
  end

end
