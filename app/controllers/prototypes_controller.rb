class PrototypesController < ApplicationController

  def index
    @prototypes = User.all
  end

  def new
    @prototype = User.new
  end

  def create
    User.create(prototype_params)
  end

  private
  def prototype_params
    params.require(:prototype).permit(:image).merge(user_id: current_user.id)
  end

end
