class MemberEventsController < ApplicationController

  def index
    render json: MemberEvent.all
  end

  def show
    render json: MemberEvent.find(params[:id])
  end

  def create
    render json: MemberEvent.create(memberEvent_params)
  end

  def update
    MemberEvent.find(params[:id]).update(memberEvent_params)
    render json: MemberEvent.find(params[:id])
  end

  def destroy
    render json: MemberEvent.find(params[:id]).destroy
  end

  private
    def memberEvent_params
      params.require(:member_event).permit(:id, :member_id, :event_id,
        :organizer, :status)
    end

end
