class PokemonsController < ApplicationController
    include ActiveModel::Validations
    #validates :name, :presence => {:message => 'lol no'}


    def capture
        own_pokemon = Pokemon.find(params[:id])
        own_pokemon.update_attribute(:trainer_id, current_trainer.id)
        redirect_to '/'
    end

    def damage
        pokemon = Pokemon.find(params[:id])
        pokemon.update_attribute(:health, (pokemon.health - 10))
        if pokemon.health <= 0
            pokemon.destroy
        end
        redirect_to :back
    end


    def new
        @pokemon = Pokemon.new
    end

    def create
        @current_trainer_id = current_trainer.id
        @pokemon = Pokemon.new(pokemon_params)
        if @pokemon.save
            @pokemon.update_attribute(:trainer_id, current_trainer.id)
            redirect_to trainer_path(current_trainer.id)
        else
            flash[:error] = "lol no"
            render :new
        end
   
    end

    def pokemon_params
        
        params.require(:pokemon).permit(:name)
        
    end
    
end
