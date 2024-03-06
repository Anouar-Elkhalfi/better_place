class ProjectPolicy < ApplicationPolicy
  def new?
    true
  end

  def show?
    true
  end

  def artisans
    true
  end

  def create
    true
  end

end
