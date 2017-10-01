class Admin::SegmentationConditionsController < Admin::ApplicationController
  before_action :set_segmentation_condition, only: [:destroy]

  # POST /segmentation_conditions
  def create
    @segmentation_condition = SegmentationCondition.new(segmentation_condition_params)

    if @segmentation_condition.save
			redirect_to segmentation_path(@segmentation_condition.segmentation), notice: t('segmentations.messages.condition_created')
    else
      render :new
    end
  end

  # DELETE /segmentation_conditions/1
  def destroy
		segmentation = @segmentation_condition.segmentation
    @segmentation_condition.destroy
		redirect_to segmentation_path(segmentation), notice: t('segmentations.messages.confirm_condition_deletion')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segmentation_condition
      @segmentation_condition = SegmentationCondition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def segmentation_condition_params
      params.require(:segmentation_condition).permit(:field, :operator, :value, :conjunction, :segmentation_id)
    end
end
