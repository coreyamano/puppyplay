class PuppiesController < ApplicationController
  def index
    puppies = Puppy.all
    render json: puppies.as_json
  end

  def create
    puppy = Puppy.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    if puppy.save
      render json: puppy.as_json
    else
      render json: { errors: puppy.errors.full_messages }
    end

    def show
      pup = Puppy.find_by(id: params[:id])
      render json: pup.as_json
    end
  end
end
