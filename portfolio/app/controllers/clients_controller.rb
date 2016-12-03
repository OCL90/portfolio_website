class ClientsController < ApplicationController
  def index
  end

  def create
    client = Client.new(name: params[:name], email: params[:email], subject: params[:subject], message: params[:message])
    if client.save
      ClientMailer.new_client(client).deliver_now
      flash[:success] = "Thanks for getting in touch with me. I will get back to you soon!"
      redirect_to :root
    else
      flash[:errors] = client.errors.full_messages
      redirect_to :back
    end
  end

end
