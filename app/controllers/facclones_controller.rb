class FacclonesController < ApplicationController
  def index
    @facclones = Facclone.all
  end

  def new
    @facclone = Facclone.new
  end

  def create
    #@facclone = Facclone.create(content: params[:facclone][:content])
    Facclone.create(facclone_params)
    redirect_to new_facclone_path
  end

  def show
    @facclone = Facclone.find(params[:id])
  end

  private

  def facclone_params
    params.require(:facclone).permit(:content)
  end

end
