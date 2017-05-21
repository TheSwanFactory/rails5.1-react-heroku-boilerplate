class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

# https://github.com/plataformatec/devise#controller-filters-and-helpers
#  before_action :authenticate_user!
#  def can_administer?
#    current_user.try(:admin?)
#  end

# https://github.com/code-mancers/rapidfire/blob/master/README.md
  def can_administer?
    true
  end

  def index
  end
end
