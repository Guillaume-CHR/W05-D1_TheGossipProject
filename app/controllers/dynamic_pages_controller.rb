class DynamicPagesController < ApplicationController
  
  def gossip
  	@gossipx = Gossip.find(params[:id])
  end

  def welcome
  	@text = params[:welcome]
  end

end
