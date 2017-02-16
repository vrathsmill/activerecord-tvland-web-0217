class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters





  def full_name
    self.first_name + " " + self.last_name
  end

    def list_roles

      character = self.characters.map{|character| character.name}
      show = self.shows.map{|show| show.name}
      string_character = character.join
      string_show = show.join
      string_character + " - " + string_show 
  end

end
