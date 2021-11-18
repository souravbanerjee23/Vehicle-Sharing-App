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
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
end
end
 