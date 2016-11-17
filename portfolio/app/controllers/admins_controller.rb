class AdminsController < ApplicationController
  def index
  end

  def home
    redirect_to "/"
  end

  def login
    admin = Admin.find_by(email: params[:email])
    if admin && admin.authenticate(params[:password])
      session[:user_id] = admin.id
      redirect_to "/admin/#{admin.id}"
    else
      flash[:errors] = "Invalid Credentials"
      redirect_to :back
    end
  end

  def show
    @client = Client.all
  end

  def destroy
    reset_session
    redirect_to :root
  end
end
