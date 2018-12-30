class MembersController < ApplicationController
  def index
    render json: Member.all
  end

  def show
    render json: Member.find(params[:id])
  end

  def create
    render json: Member.create(member_params)
  end

  def update
    Member.find(params[:id]).update(member_params)
    render json: Member.find(params[:id])
  end

  def destroy
    render json: Member.find(params[:id]).destroy
  end

  private
    def member_params
      params.require(:member).permit(:id, :name, :age, :email,
        :photo, :bio, :group_id)
    end
    
end
