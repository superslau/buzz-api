class SpacesController < ApplicationController
  def create
    space = Space.new(space_params) do |s|
      s.photo = params[:space][:photo].read
    end

    if space.save
      redirect_to space_path(space)
    else
      render action: "new", locals: { space: space }
    end
  end

  def new
    space = Space.new

    render :new, locals: { space: space }
  end

  def show
  end

  private

  def space_params
    params.require(:space).permit(:latitude, :longitude, :notes, :rating, :address_line_one, :address_line_two, :postcode, :city, :locality, :created_at, :country_code, :photo)
  end
end
