class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
  
    def actors_list
      actors = characters.map(&:actor)
      actors.map(&:full_name)
    end
  
  end