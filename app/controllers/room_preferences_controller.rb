class RoomPreferencesController < ApplicationController
  def index
    @room_preferences = RoomPreference.all
  end

  def show
    @room_preference = RoomPreference.find(params[:id])
  end

  def new
    @room_preference = RoomPreference.new
  end

  def create
    @room_preference = RoomPreference.new
    @room_preference.type_one = params[:type_one]
    @room_preference.type_two = params[:type_two]
    @room_preference.type_three = params[:type_three]

    if @room_preference.save
      redirect_to "/room_preferences", :notice => "Room preference created successfully."
    else
      render 'new'
    end
  end

  def edit
    @room_preference = RoomPreference.find(params[:id])
  end

  def update
    @room_preference = RoomPreference.find(params[:id])

    @room_preference.type_one = params[:type_one]
    @room_preference.type_two = params[:type_two]
    @room_preference.type_three = params[:type_three]

    if @room_preference.save
      redirect_to "/room_preferences", :notice => "Room preference updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @room_preference = RoomPreference.find(params[:id])

    @room_preference.destroy

    redirect_to "/room_preferences", :notice => "Room preference deleted."
  end
end
