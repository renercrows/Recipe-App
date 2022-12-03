class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Recipe, public: true
    # Define abilities for the user here. For example:
    #
    return unless user.present?

    can :read, :all
    can :manage, Food, user: user
    can :manage, Recipe, user: user
    can :manage, RecipeFood, user: user
  end
end
