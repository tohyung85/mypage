class PortfoliositesController < ApplicationController
  def index
    
  end

  def blog
    @comments = Comment.all
    @comment = Comment.new
  end
end
