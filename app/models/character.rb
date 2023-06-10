class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
  
  def say_that_thing_you_say
  
      "#{name} always says: #{catchphrase}"
  
  
  end
  
  end
  
  
  # Character
  #   has a first and last name
  #   has a catchphrase
  #   #actor
  #     returns the actor that the character belongs to
  #   #show
  #     returns the show that the character belongs to
  #     can be used to build its associated show
  #   #say_that_thing_you_say
  #     returns a string with the character's name and catchphrase (FAILED - 1)
  
  # Actor
  #   has a first and last name
  #   #characters
  #     returns a list of characters associated with the actor
  #   #shows
  #     returns the shows associated with the actor through their characters
  #   #full_name
  #     returns the actor's full name (FAILED - 2)
  #   #list_roles
  #     returns a list of roles for the actor using the character name and show name (FAILED - 3)