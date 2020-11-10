class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # 1. See all restaurants - C[R]UD - #all - localhost:3000/restaurants - index
  def index
    # restaurant instances inside array
    @restaurants = Restaurant.all
  end

  # 2. See details about one restaurant - C[R]UD - #find - localhost:3000/restaurants/:id - show
  def show
    # params can be a hash containing the form values
    # params can also be the url attributes
    # an instance of a restaurant
  end

  # 3. Create a restaurant (Show form) - [C]RUD - #new -> #save, #create  - localhost:3000/restaurants/new - new
  def new
    @restaurant = Restaurant.new
  end

  # 3.1. Create a restaurant (Receive form) - [C]RUD - #new -> #save   - POST localhost:3000/restaurants - create
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save!
      # send the user to the newly created restaurant show page
      redirect_to @restaurant
    else
      # reload the form view
      render :new
    end
  end

  # 4. Update a restaurant (Show form) - CR[U]D - #find - GET localhost:3000/restaurants/:id/edit - edit
  def edit
  end

  # 4.1. Update a restaurant (Receive form) - CR[U]D - #find -> #update -  PATCH localhost:3000/restaurants/:id - edit
  def update


    if @restaurant.update!(restaurant_params)
      redirect_to @restaurant
    else
      render :edit
    end
  end
  # 6. Destroy a restaurant - CRU[D] - #find -> #delete -  DELETE localhost:3000/restaurants/:id - destroy

  def destroy

    @restaurant.delete

    redirect_to root_path
  end

  private

  def restaurant_params
    params.require('restaurant').permit(:name, :address, :rating, :owner_name)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
