class FacclonesController < ApplicationController

 #アクションが実行される前に、before_actionメソッドを実行
  before_action :set_facclone, only:[:show,:edit,:update,:destroy]

  #一覧
  def index
    @facclones = Facclone.all
  end

  #新規
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

  #登録
  def create
    @facclone = Facclone.create(facclone_params)

    if @facclone.save
      redirect_to new_facclone_path
    else
      render :new
    end
  end

  #参照
  def show
    @facclone = Facclone.find(params[:id])
  end

  #削除
  def destroy
    @facclone.destroy
    #インデックス画面に遷移
    redirect_to facclones_path, notice: "投稿削除完了"
  end

  private
  #ストロングパラメーター
  def facclone_params
    params.require(:facclone).permit(:content)
  end

  # 共通クラス作成
  def set_facclone
    @facclone = Facclone.find(params[:id])
  end

end
