class FacclonesController < ApplicationController
  def index
    @facclones = Facclone.all
  end

  def new
    @facclone = Facclone.new
  end

  #編集
  def edit
    @facclone = Facclone.find(params[:id])
  end

  #更新
  def update
    @facclone = Facclone.find(params[:id])
    if @facclone.update(facclone_params)
      redirect_to facclones_path, notice:'編集完了'
    else
      render :edit
    end
  end

  def create
    @facclone = Facclone.create(facclone_params)

    if @facclone.save
      redirect_to new_facclone_path
    else
      render :new
    end
  end

  def show
    @facclone = Facclone.find(params[:id])
  end

  private

  def facclone_params
    params.require(:facclone).permit(:content)
  end
end
