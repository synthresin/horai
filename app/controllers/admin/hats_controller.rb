class Admin::HatsController < Admin::ApplicationController
  before_action :set_hat, only: [:show, :edit, :update, :destroy]

  # GET /admin/hats
  # GET /admin/hats.json
  def index
    @hats = Hat.all
  end

  # GET /admin/hats/1
  # GET /admin/hats/1.json
  def show
  end

  # GET /admin/hats/new
  def new
    @hat = Hat.new
  end

  # GET /admin/hats/1/edit
  def edit
  end

  # POST /admin/hats
  # POST /admin/hats.json
  def create
    @hat = Hat.new(hat_params)

    if @hat.save
      redirect_to admin_hats_path, notice: '모자가 생성되었어요.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/hats/1
  # PATCH/PUT /admin/hats/1.json
  def update
    if @hat.update(hat_params)
      redirect_to admin_hats_path, notice: '모자가 수정되었어요.'
    else
      render :edit
    end
  end

  # DELETE /admin/hats/1
  # DELETE /admin/hats/1.json
  def destroy
    @hat.destroy
    redirect_to admin_hats_url, notice: '모자가 삭제되었어요.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hat
      @hat = Hat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hat_params
      params.require(:hat).permit(:name, :description, :photo, :photo_cache, :remove_photo)
    end
end
