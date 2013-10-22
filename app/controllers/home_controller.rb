 class HomeController < ApplicationController
  
  def index
  	@featured = Page.friendly.joins(:categories).where(:categories => { :name => "Home" }) rescue nil
  end

end