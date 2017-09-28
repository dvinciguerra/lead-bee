class HomeController < ApplicationController
  
  def index
    @lead = Lead.new
  end

end
