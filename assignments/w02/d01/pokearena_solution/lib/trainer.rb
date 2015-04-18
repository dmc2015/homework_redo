class Trainer
  attr_reader :name, :age, :hometown, :pokemons

  def initialize(name, age, hometown, pokemons)
    @name = name.capitalize
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_pokemons
    pokemons.map {|pokemon| pokemon.name }.join("\n")
  end

  def list_info
    info = "#{name}\n"
    info += "-----------------\n"
    info += "#{age} years old\n"
    info += "from #{hometown}\n"
    info += "with #{pokemons.count} pokemon"
  end

  def add_pokemon(pokemon)
    if pokemons.count < 6
      @pokemons.push(pokemon)
      true
    else
      false
    end
  end
end
