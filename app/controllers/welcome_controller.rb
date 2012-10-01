class WelcomeController < ApplicationController
  before_filter :redirect_if_signed_in

  def show
    render
  end

  private

  def redirect_if_signed_in
    if signed_in?
      redirect_to dashboard_path
    end
  end


end
