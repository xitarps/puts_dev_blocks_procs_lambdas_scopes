class HomeController < ApplicationController
  def index
    @users = User.only_non_actives
  end
end
