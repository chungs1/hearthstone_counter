class AdminController < ApplicationController
  def login
  end

  def login_post
    if ENV['secret_password'] == params[:password]
      return redirect_to root_path, notice: "Nice, you have admin privileges"
    end
    redirect_to login_path, alert: "Oops wrong password"
  end
end
