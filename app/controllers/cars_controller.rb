class CarsController < ApplicationController
  def index
    @cars = Car.all
    render template: "cars/index"
  end
  def show 
    @car = Car.find_by(id: params[:id])
    render template: "cars/show"
  end
  def create
    @car = Car.new(
      make: params[:make], 
      name: params[:name], 
      price: params[:price], 
      color: params[:color], 
      year: params[:year],
    )
    @car.save
    render template: "cars/show"
  end 
  def update
    @car = Car.find_by(id: params[:id])
    @car.make = params[:make]
    @car.name= params[:name]
    @car.price= params[:price]
    @car.color= params[:color]
    @car.year= params[:year]
    @car.save
    render template: "cars/show"
  end
  def destroy 
    @car = Car.find_by(id: params[:id])
    @car.destroy
    p "The item was deleted"
    render template: "cars/show"
end