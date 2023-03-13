class PrototypesController < ApplicationController

  def index
    @prototypes = User.all
  end

  def new
    @prototype = User.new
  end

end
