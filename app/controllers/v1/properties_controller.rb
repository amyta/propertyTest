class V1::PropertiesController < ApplicationController
  def index
    properties = Property.all
    render json: properties
  end

  def show
    properties = Property.where(id: params[:id]).first    
    render json: properties
  end

  def create
    @property = Property.new(property_params)

    @property.save
    render json: @property, status: :created
  end

  def destroy
      @property = Property.where(id: params[:id]).first
      if @property.destroy
          head(:ok)
      else
          head(:unprocessible_entity)
      end
  end

  private

  def property_params
      params.require(:property).permit(:address)
  end
end
