class PagesController < ApplicationController
  def home
    @surfboard = Surfboard.new
    @surfboards = Surfboard.all
  end
end
