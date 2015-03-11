class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
  def new
    @entry = Entry.new
  end

  def how_to
  end

  def create
    rate = rand(4)
    Entry.create(avatar: params[:entry][:avatar], name: params[:name], age: params[:age],  hometown: params[:hometown], height: params[:height], appeal: params[:appeal], rate: rate)
  end

  def update
    entry = Entry.find(params[:id])
    rate = entry.rate + 1
    entry.update(rate: rate)
    # redirect_to '/'
    redirect_to :action => "index"
  end


  private
  def create_params
    params.permit(:avatar, :image, :name, :age, :hometown, :height, :appeal, :rate )
  end

  def update_params
    params.permit(:id)
  end


end
