class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def success?
    true
  end

  def destroy?
    true
  end
end
