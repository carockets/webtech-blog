class MainController < ApplicationController
  def index
  	@blogitems = BlogItem.all

  	respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { render :json => @pins }
	end
  end
end
