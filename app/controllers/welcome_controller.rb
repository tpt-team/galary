class WelcomeController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end
end
