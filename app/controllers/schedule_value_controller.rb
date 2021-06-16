class ScheduleValueController < ApplicationController

  def index
    @values = ScheduleValue.all
  end

  def new
    @value = ScheduleValue.new
  end
