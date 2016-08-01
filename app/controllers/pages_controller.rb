class PagesController < ApplicationController
  def home
  	@search = params[:search_meal]
  	@name = "Botica"
  	@menu = %w(Bitoque Salmon Codfish)

  	@menu.select! {|meal| meal.downcase == @search.downcase } unless @search.nil? || @search.empty?
  end

  def about

  end

  def contact

  end
end
