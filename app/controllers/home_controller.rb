class HomeController < ApplicationController
  
  def index
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
			redirect_to root_url(@lead), notice: t('.success')
    else
			render :index
    end
  end

  private
    def lead_params
      params.require(:lead).permit(:name, :email, :age, :job)
    end
end
