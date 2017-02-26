class RecipePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.where("collected_count > 0").order(collected_count: :desc)
    end
  end

end
