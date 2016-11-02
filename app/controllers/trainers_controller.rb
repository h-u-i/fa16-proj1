class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemon = Pokemon.where(:trainer_id => @trainer.id)
    @current_trainer_id = current_trainer.id
    @trainer_id = @trainer.id
  end

end
