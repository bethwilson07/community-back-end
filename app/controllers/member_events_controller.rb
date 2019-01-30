class MemberEventsController < ApplicationController

  def index
    render json: MemberEvent.all
  end

  def show
    render json: MemberEvent.find(params[:id])
  end

  def create
    @member = Member.find(memberEvent_params[:member_event][:member_id])
    @member.events.create(memberEvent_params[:event])
    @member.member_events.last.update(memberEvent_params[:member_event])
    render json: @member.events.last, :include => [:member_events]
  end

  def update
    MemberEvent.find(params[:id]).update(memberEvent_params[:member_event])
    render json: MemberEvent.find(params[:id])
  end

  def destroy
    render json: MemberEvent.find(params[:id]).destroy
  end

  private
    def memberEvent_params
      params.require(:data).permit(event: [:name, :description,
        :location, :latitude, :longitude, :when, :photo, :group_id], member_event: [:member_id,
        :organizer, :status])
    end
    # data: {event: {name: this.state.formName,
    #         description: this.state.formDescription,
    #         location: this.state.formLocation,
    #         latitude: null,
    #         longitude: null,
    #         when: this.state.formTime,
    #         photo: this.state.formPhoto
    #       },
    # member_event: {
    #           member_id: this.state.currentMember.id,
    #           organizer: true,
    #           status: "going"
    #         }}

end
