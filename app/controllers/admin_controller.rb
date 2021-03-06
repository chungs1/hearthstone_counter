class AdminController < ApplicationController
  def login
  end

  def login_post
    if ENV['secret_password'] == params[:password]
      session['authenticated'] = true
      return redirect_to root_path, notice: "Nice, you have admin privileges"
    end
    redirect_to login_path, alert: "Oops wrong password"
  end

  def logout
    reset_session
    return redirect_to root_path, notice: "Successfully became a normal user"
  end
end
