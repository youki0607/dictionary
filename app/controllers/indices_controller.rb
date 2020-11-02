class IndicesController < ApplicationController
  def index
    @indices = Index.all
  end
end
