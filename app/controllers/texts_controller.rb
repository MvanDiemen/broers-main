class TextsController < ApplicationController
  def index
    @texts = Text.all
  end

  def show
    @text = Text.find(params[:id])
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params(params))
    if @text.save!
      redirect_to @text
    else
      render 'new'
    end
  end

  def edit
    @text = Text.find(params[:id])
  end

  def update
    @text = Text.find(params[:id])

    if @text.assign_attributes!(text_params(params))
      redirect_to @text
    else
      render 'edit'
    end
  end

  def text_params(params)
    params.require(:text).permit(:subject, :type, :body)
  end
end
