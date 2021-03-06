class MealsController < ApplicationController

    def create
        meal = Meal.create(name: params[:name])
        render json: meal
    end

    def update
        meal = Meal.find_by(id: params[:id])
        meal.update(name: params[:name], ingredients: params[:ingredients])
        render json: meal
    end

    def index
        meals = Meal.all
        render json: meals, include: [:ingredients]
    end

    def show
        meal = Meal.find_by(id: params[:id])
        render json: meal, include: [:ingredients]
    end

end
