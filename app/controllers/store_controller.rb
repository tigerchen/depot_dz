class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @cart = current_cart
    
    if session[:counter].nil?
      session[:counter]=1
    else
      session[:counter] += 1
    end
    
    if session[:counter] > 5
      @session_counter = session[:counter]
    else
      @session_counter = nil
    end 
  end

end
