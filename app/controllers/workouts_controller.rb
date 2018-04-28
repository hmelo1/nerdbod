require 'pry'
class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save!
      redirect_to workout_url(@workout)
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
  end

  def destroy
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :muscle_group, :equipment, :time_length, :reps, :sets)
  end

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
