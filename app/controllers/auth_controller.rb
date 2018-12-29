class AuthController < ApplicationController

  def create # POST /controllers/login
    @member = Member.find_by(email: params[:email])
    if @member && @member.authenticate(params[:password])
      render json: {message: "correct username and password"}
    else
      render json: {message: "incorrect"}
    end
  end


end
