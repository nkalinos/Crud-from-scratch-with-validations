class StatusesController < ApplicationController

  def index
    @status = Status.all

  end

  def new
    @status = Status.new

  end

  def create
    @status = Status.new(status_params)


    if @status.save

      redirect_to root_path, notice: 'Status was successfully created.'
    else
      render :new
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def edit
    @status = Status.find(params[:id])
  end

  def destroy
    @status = Status.find(params[:id])
   if @status.destroy
     redirect_to root_path, notice: 'Status successfully deleted.'
    end
  end

  def update
    @status = Status.find(params[:id])
      if @status.update(status_params)
          redirect_to root_path, notice: 'Status was successfully updated.'
        else
          render :edit
      end
  end

  private
  def set_status
    @status = Status.find(params[:id])
  end

  def status_params
    params.require(:status).permit(:message, :user)
  end


end
