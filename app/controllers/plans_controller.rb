class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save!
      redirect_to plan_url(@plan), notice: 'Successfully created New Plan!'
    else
      render :new
    end
  end

  def show
  end

  def index
    @plans = Plan.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :equipment_needed, :time_per_workout)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
