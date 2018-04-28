require 'pry'
class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def new
    @workout = Workout.new
    @workout.day = params[:workout_day]
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save!
      redirect_to workout_url(@workout), notice: 'Successfully created workout!'
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
      redirect_to workout_url(@workout), notice: 'Successfully updated workout!'
    else
      render :edit
    end
  end

  def destroy
    @workout.destroy
    redirect_to workouts_url, notice: 'Successfully deleted workout!'
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :muscle_group, :equipment, :time_length, :reps, :sets, :day)
  end

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
