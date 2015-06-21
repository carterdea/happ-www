class PagesController < ApplicationController
  layout "map", only: [:home]
  def home
  end
end
