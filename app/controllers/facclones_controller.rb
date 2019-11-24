class FacclonesController < ApplicationController
  def index
  end

  def new
    @facclone = Facclone.new
  end

  def create
    @facclone = Facclone.create(content: params[:facclone][:content])
  end
end
