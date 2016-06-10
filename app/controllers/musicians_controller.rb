class MusiciansController < ApplicationController
  def index
    @musicians = Musician.all
  end

  def show
    @musician = Musician.find(params[:id])
    @album = Album.new

  end

  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.new
    @musician.genre = params[:genre]
    @musician.name = params[:name]

    if @musician.save
      redirect_to "/musicians", :notice => "Musician created successfully."
    else
      render 'new'
    end
  end

  def edit
    @musician = Musician.find(params[:id])
  end

  def update
    @musician = Musician.find(params[:id])

    @musician.genre = params[:genre]
    @musician.name = params[:name]

    if @musician.save
      redirect_to "/musicians", :notice => "Musician updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @musician = Musician.find(params[:id])

    @musician.destroy

    redirect_to "/musicians", :notice => "Musician deleted."
  end
end
