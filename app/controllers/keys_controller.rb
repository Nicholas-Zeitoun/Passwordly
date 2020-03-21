class KeysController < ApplicationController
  def index
    @keys = Key.all
  end
end
