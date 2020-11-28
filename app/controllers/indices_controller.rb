class IndicesController < ApplicationController
  before_action :set_index, only:[:edit, :show]
  before_action :move_to_index, expect: [:index, :show]

  def index
    @indices = Index.all
  end

  def new
    @index = Index.new
  end

  def create
    Index.create(index_params)
  end

  def destroy
    index = Index.find(params[:id])
    index.destroy
  end

  def edit
  end

  def update
    index = Index.find(params[:id])
    index.update(index_params)
  end

  def show
  end

  def search
    @indices = Index.search(params[:keyword])
  end

  private
  def index_params
    params.require(:index).permit(:name, :image, :explanation)
  end

  def set_index
    @index = Index.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
    
  end
end
