class ExperiencesController < ApplicationController

  def new
    @experiences = Experience.new
  end
end
