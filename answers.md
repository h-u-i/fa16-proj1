# Q0: Why is this error being thrown?
We haven't generated the Pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In app/views/home/index.html.erb, we see that @pokemon.name is references. When we look at home_controller.rb in app/controllers, we notice that within the method index, @pokemon refers to a sample of trainerless_pokemon (which is pulled from the Pokemon db where the trainers are nil).

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Creates a button that says "Throw a Pokeball!". capture_path(id: @pokemon) is calling the method capture that is located in the PokemonsController.rb. It is passing in a parameter id which is needed to reference which pokemon belongs to the trainer who is logged in. It is a patch request, therefore, in routes.rb, PATCH should be requested. 

# Question 3: What would you name your own Pokemon? I named it Goldeen. Hah

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I put redirect_to :back. In later parts, I used redirect_to trainer_path(current_trainer.id) which directs you to the trainer whose id is the current_trainer. 


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
When creating an instance of the model, it validates the presence of a particular attribute and the uniqueness of it. Thus if either check fails, it does not save thus going to the 'else' condition which flashes the error.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
