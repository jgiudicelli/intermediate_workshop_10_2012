class TextShoutsController < ApplicationController
  def create
    text_shout = TextShout.new(params[:text_shout])
    current_user.shouts.create(shout_params.merge(content: text_shout))
    redirect_to dashboard_path, notice: "Shouted!"
  end

  private

  def shouts_params
    params[:shout] || {}
  end
end
