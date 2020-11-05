class IndicesController < ApplicationController

  def index
    @indices = Index.all
  end

  def new
    @index = Index.new
  end

  def create
    Index.create(index_params)
  end

  private
  def index_params
    params.require(:index).permit(:name, :image, :explanation)
  end

end
