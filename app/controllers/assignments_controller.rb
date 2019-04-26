class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /assignments
  # GET /assignments.json
  def index

    if current_user && !current_user.admin
  
    if current_user && current_user.level_id == 1

      @assignments = Assignment.where(" level_id  = 1 ")

    elsif current_user && current_user.level_id == 2

    @assignments = Assignment.where(" level_id  = 2 ")

    elsif current_user && current_user.level_id == 3

    @assignments = Assignment.where(" level_id  = 3 ")
 
    elsif current_user && current_user.level_id == 4

      @assignments = Assignment.where(" level_id  = 4 ")

    elsif current_user && current_user.level_id == 5

      @assignments = Assignment.where(" level_id  = 5 ")

    elsif current_user && current_user.level_id == 5

      @assignments = Assignment.where(" level_id  = 5 ")

    elsif current_user && current_user.level_id == 6

      @assignments = Assignment.where(" level_id  = 6 ")

    elsif current_user && current_user.level_id == 7

      @assignments = Assignment.where(" level_id  = 7 ")

    elsif current_user && current_user.level_id == 8

      @assignments = Assignment.where(" level_id  = 8 ")

    
    elsif current_user && current_user.level_id == 8

      @assignments = Assignment.where(" level_id  = 8 ")

    
    elsif current_user && current_user.level_id == 8

      @assignments = Assignment.where(" level_id  = 8 ")

    
    elsif current_user && current_user.level_id == 8

      @assignments = Assignment.where(" level_id  = 8 ")

    
    elsif current_user && current_user.level_id == 8

      @assignments = Assignment.where(" level_id  = 8 ")

    
    elsif current_user && current_user.level_id == 9

      @assignments = Assignment.where(" level_id  = 9 ")

    
    elsif current_user && current_user.level_id == 10

      @assignments = Assignment.where(" level_id  = 10 ")

    
    elsif current_user && current_user.level_id == 11

      @assignments = Assignment.where(" level_id  = 11 ")

    
    elsif current_user && current_user.level_id == 12

      @assignments = Assignment.where(" level_id  = 12 ")

    
    elsif current_user && current_user.level_id == 13

      @assignments = Assignment.where(" level_id  = 13 ")

    
    elsif current_user && current_user.level_id == 14

      @assignments = Assignment.where(" level_id  = 14 ")

    elsif current_user && current_user.level_id == 15

      @assignments = Assignment.where(" level_id  = 15 ")

    elsif current_user && current_user.level_id == 16

      @assignments = Assignment.where(" level_id  = 16 ")

    

    end
  else current_user && current_user.admin
    @assignments = Assignment.all
    end
  end

 

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/new
  def new
    @levels = Level.all.collect { |m| [m.name, m.id] }
    @assignment = current_user.assignments.build
    
    
  end

  # GET /assignments/1/edit
  def edit
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @assignment = current_user.assignments.build(assignment_params)

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to root_path, notice: 'Assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:description, :title, :content, :deadline, :level_id, :user_id)
    end
end
