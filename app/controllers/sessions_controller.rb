class SessionsController < ApplicationController

  def create
    user = User
    .find_by(email: params["user"]["email"])
    .try(:authenticate, params["user"]["password"])

    if user
      session[:user_id] = user.id
      # render json: {
      #   status: :created,
      #   logged_id: true,
      #   user: user
      # }
      redirect_to root_path
    else
      render json: {status: 401}
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }

    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    puts "logout"
    reset_session
    redirect_to login_url
    # render json: {
    #   status: 200,
    #   logged_out: true
    # }
  end
end