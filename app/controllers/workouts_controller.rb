class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def new
    @plan = Plan.find(params[:plan_id])
    @workout = Workout.new(
      :plan_id => params[:plan_id],
      :day => params[:workout_day]
    )
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.plan_id = plan_id_params
    if @workout.save!
      redirect_to plan_workout_url(@workout.plan_id, @workout), notice: 'Successfully created workout!'
    else
      render :new
    end
  end

  def index
    @workouts = Workout.all
  end

  def show
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to plan_workout_url(@workout.plan_id, @workout), notice: 'Successfully updated workout!'
    else
      render :edit
    end
  end

  def destroy
    @workout.destroy
    redirect_to plan_workouts_url, notice: 'Successfully deleted workout!'
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :muscle_group, :equipment, :time_length, :reps, :sets, :day)
  end

  def plan_id_params
    params.require(:plan_id)
  end

  def set_workout
    @plan = Plan.find(params[:plan_id])
    @workout = Workout.find(params[:id])
  end
end
