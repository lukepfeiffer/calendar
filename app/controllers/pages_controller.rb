class PagesController < ApplicationController
  def home
    @days = ["monday", "tuesday" , "wednessday" , "thursday"]
  end
end
