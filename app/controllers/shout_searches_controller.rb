class ShoutSearchesController < ApplicationController
  def show
    @search_term = params[:search][:q]
    @shouts = ShoutSearcher.new(@search_term).shouts.latest
  end
end
