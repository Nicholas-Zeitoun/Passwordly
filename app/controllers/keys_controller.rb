class KeysController < ApplicationController
  before_action :set_key, only: [:destroy, :edit, :update]

  def index
    @key = Key.new
    @keys = Key.all
  end

  def new
    @key = Key.new
  end

  def create
    @key = Key.new(key_params)
    @key.user = current_user
    # @plant.user = current_user

    if @key.save
      redirect_to root_path
    # else
    #   render root_path
    end
  end

  def edit
  end

  def update
    if @key.update(key_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def set_key
    @key = Key.find(params[:id])
  end

  def key_params
    params.require(:key).permit(:name, :account, :password, :url, :user_id)
  end
end
