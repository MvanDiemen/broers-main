class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params(params))
    if @message.save!
      redirect_to @message
    else
      render 'new'
    end
  end
end
