class Admin::SegmentationsController < Admin::ApplicationController
  before_action :set_segmentation, only: [:show, :edit, :update, :destroy]

  # GET /segmentations
  def index
    @segmentations = Segmentation.all
  end

  # GET /segmentations/1
  def show
  end

  # GET /segmentations/new
  def new
    @segmentation = Segmentation.new
  end

  # GET /segmentations/1/edit
  def edit
  end

  # POST /segmentations
  def create
    @segmentation = Segmentation.new(segmentation_params)

    if @segmentation.save
      redirect_to segmentation_path(@segmentation), notice: 'Segmentation was successfully created.'
    else
      render :index
    end
  end

  # PATCH/PUT /segmentations/1
  def update
    if @segmentation.update(segmentation_params)
      redirect_to @segmentation, notice: 'Segmentation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /segmentations/1
  def destroy
    @segmentation.destroy
    redirect_to segmentations_url, notice: 'Segmentation was successfully destroyed.'
  end


	def search
      @segmentation = Segmentation.find(params[:segmentation_id])
	end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segmentation
      @segmentation = Segmentation.find(params[:id])
			@segmentation_condition =  SegmentationCondition.new
    end

    # Only allow a trusted parameter "white list" through.
    def segmentation_params
      params.require(:segmentation).permit(:name, :description)
    end
end
