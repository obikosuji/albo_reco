class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new
    @album.musician_id = params[:musician_id]
    @album.year = params[:year]
    @album.name = params[:name]

    if @album.save
      redirect_to "/albums", :notice => "Album created successfully."
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    @album.musician_id = params[:musician_id]
    @album.year = params[:year]
    @album.name = params[:name]

    if @album.save
      redirect_to "/albums", :notice => "Album updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])

    @album.destroy

    redirect_to "/albums", :notice => "Album deleted."
  end
end
