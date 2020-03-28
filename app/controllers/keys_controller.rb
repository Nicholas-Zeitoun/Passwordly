class KeysController < ApplicationController
  def index
    @key = Key.new
    @keys = Key.all
  end

  def new
    @key = Key.new
  end

  def create
    @key = Key.new(key_params)
    @booking.user = current_user
    # @plant.user = current_user

    if @key.save
      redirect_to root_path
    # else
    #   render root_path
    end
  end

  private

  def key_params
    params.require(:key).permit(:name, :account, :password, :url)
  end
end
