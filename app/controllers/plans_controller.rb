class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def new
    @plan = Plan.new
  end

  def create
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

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
