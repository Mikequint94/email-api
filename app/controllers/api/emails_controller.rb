class Api::EmailsController < ApplicationController
  
  def index
    render json: { Welcome: "welcome to my email API!",
                  Instructions: "to use, simply send a post request to this URL with a subject, body, and to parameters"}
  end
  
  def create
    @email = Email.new(email_params)
    if @email.save
      render json: { status: 200,
                      data: @email }
      UserMailer.send_email(@email).deliver_now
    else
      render json: { status: @email.errors.full_messages }
    end
  end
  
  private

  def email_params
    params.permit(:subject, :body, :to)
  end

end
