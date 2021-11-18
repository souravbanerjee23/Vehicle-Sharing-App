class PassengerController < ApplicationController
  def login
    @passenger=Passenger.all
  end
  def show
    @passenger = Passenger.find(params[:id])
  end

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_id: "...", phone: "...",address: "...",email:"...",password:"...")

    if @article.save
      redirect_to @passenger
    else
      render :new
    end
  end
end
end
 