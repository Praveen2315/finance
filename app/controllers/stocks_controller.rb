class StocksController < ApplicationController
  def search
      if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
            render 'users/my_porfolio'
        else
            flash[:alert] = "Please enter a valid symbol to search"
            redirect_to my_porfolio_path
        end    
        else
          flash[:alert] = "Please enter a symbol to search"
          redirect_to my_porfolio_path
      end
  end
end