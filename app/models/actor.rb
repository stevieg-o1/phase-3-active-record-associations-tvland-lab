class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
      "#{first_name} #{last_name}"
    end
  
    def list_roles
  characters.map{ |character| "#{character.name} - #{character.show.name}" }
    end
  
  end
  
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