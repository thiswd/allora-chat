class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def update?
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.edition.user == user
  end
end
