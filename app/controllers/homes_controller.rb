class HomesController < ApplicationController
  before_action :authenticate_user!, only: [:show_asigs]
  def index

    #@assignments = Assignment.all


    @levels = Level.all
    @assignments = Assignment.where(["title LIKE?" , "%#{params[:search]}%"])
    if current_user
    @submits = current_user.submits
    end
  end


  def  show_asigs
    @assignment = Assignment.find(params[:id])
  
  end 

def show
  @assignment = Assignment.find(params[:id])

end 

  private
  # Use callbacks to share common setup or constraints between actions.
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def assignment_params
    params.require(:assignment).permit(:description, :title, :content, :deadline, :level_id, :user_id)
  end
  
end
