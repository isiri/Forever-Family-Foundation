class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index]

  def index
  end

  def logged_in_index
  end

end
