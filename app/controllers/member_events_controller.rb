class MemberEventsController < ApplicationController

  def index
    render json: MemberEvent.all
  end

  def show
    render json: MemberEvent.find(params[:id])
  end

end
