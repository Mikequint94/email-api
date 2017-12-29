class Api::EmailsController < ApplicationController
  
  def create
    @email = Email.new(email_params)
    render json: { status: 200,
                      data: @email }
  end
  
  private

  def email_params
    params.require(:email).permit(:subject, :body, :recipient)
  end

end
