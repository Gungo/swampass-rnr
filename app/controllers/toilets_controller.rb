class ToiletsController < ApplicationController

  def index
     @toilets = Toilet.all
  end

  def show
    @toilet = Toilet.find(params[:id])
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)

    if(@toilet.save)
      redirect_to @toilet
    else
      render 'new'
    end
  end

  def edit
    @toilet = Toilet.find(params[:id])
  end

  def update
    @toilet = Toilet.find(params[:id])

    if(@toilet.update(toilet_params))
      redirect_to @toilet
    else
      render 'edit'
    end
  end

  def destroy
    @toilet = Toilet.find(params[:id])
    @toilet.destroy

    redirect_to toilets_path
  end

  private def toilet_params
     params.require(:toilet).permit(:name, :address, :location, :poop_rating, :atmosphere)
  end

end
