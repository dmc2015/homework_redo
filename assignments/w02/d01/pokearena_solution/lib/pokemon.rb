class Pokemon
  attr_reader :name, :hp, :id, :poketype, :attack, :speed, :defense

  def initialize(name, id, poketype, hp, attack, defense, speed)
     @name = name.capitalize
     if hp > 100
       @hp = 100
     else
       @hp = hp
     end
     @id = id
     @poketype = poketype
     @speed = speed
     @attack = attack
     @defense = defense
   end

   def fainted?
     return @hp <= 0
   end

   def take_damage
     if fainted?
       return false
     end
     @hp = @hp - 10
   end

   def full_restore
     @hp = 100
   end

   def list_stats
     return "Name: #{@name}\n HP: #{@hp}\n ID: #{@id}\n Poketype: #{@poketype}\n Defense: #{@defense}\n Attack: #{@attack}\n Speed: #{@speed}"
   end
end
