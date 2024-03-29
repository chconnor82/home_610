class CurrentRoomsController < ApplicationController
  def index
    @current_rooms = CurrentRoom.all
  end

  def show
    @current_room = CurrentRoom.find(params[:id])
  end

  def new
    @current_room = CurrentRoom.new
  end

  def create
    @current_room = CurrentRoom.new
    @current_room.height = params[:height]
    @current_room.width = params[:width]
    @current_room.room_type = params[:room_type]

    if @current_room.save
      redirect_to "/current_rooms", :notice => "Current room created successfully."
    else
      render 'new'
    end
  end

  def edit
    @current_room = CurrentRoom.find(params[:id])
  end

  def update
    @current_room = CurrentRoom.find(params[:id])

    @current_room.height = params[:height]
    @current_room.width = params[:width]
    @current_room.room_type = params[:room_type]

    if @current_room.save
      redirect_to "/current_rooms", :notice => "Current room updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @current_room = CurrentRoom.find(params[:id])

    @current_room.destroy

    redirect_to "/current_rooms", :notice => "Current room deleted."
  end
end
