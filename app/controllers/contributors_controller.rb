class ContributorsController < ApplicationController
  perspectives_actions

  def index
    talk = Talk.find(params[:id])
    respond_with(perspective('contributors/index', talk: talk))
  end
end
