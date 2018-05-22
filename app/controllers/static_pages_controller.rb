class StaticPagesController < ApplicationController
  def home
  end

  def dumbbells
    @plans = Plan.dumbbells
  end
end
