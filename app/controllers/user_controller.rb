class UserController < ApplicationController
  require 'faker'
  before_action :set_user, only: %i[ show edit update destroy ]
  def index
    @users = User.all
  end

  def show
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_index_path, notice: " ✅ Argonaute ajouté ✅" }
        format.json { }
      else
        format.html { redirect_to user_index_path, alert: " 🚨 Argonaute non valide 🚨" }
        format.json { }
      end
    end
  end

  def destroy
      @user.destroy
  
      respond_to do |format|
        format.html { redirect_to user_index_path }
        format.js { }
      end
    end

  

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name)
  end

  def destroy_all_user
    User.destroy_all  
    respond_to do |format|
      format.html { redirect_to user_index_path, notice: " ✅ Liste supprimée ✅" }
      format.js { }
    end
  end

  def make_list
    9.times do
      u = User.create(name: Faker::Games::WorldOfWarcraft.hero.capitalize)
      end
      respond_to do |format|
        format.html { redirect_to user_index_path, notice: " ✅ Liste validée ✅" }
        format.js { }     
      end
  end

  def make_complete_list
    50.times do
      u = User.create(name: Faker::Games::LeagueOfLegends.champion.capitalize)
      end
      respond_to do |format|
        format.html { redirect_to user_index_path, notice: " ✅ Liste validée ✅" }
        format.js { }     
      end
  end
  
end
