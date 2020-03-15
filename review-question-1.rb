## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?

def pokemon_ability(pokemon_name, pokemon)
    pokemon.map{|poke_profile|
        poke_profile.values.map{|val|
            if val == pokemon_name
                poke_profile[:abilities][0][:ability][:url] #ask about key vs string syntax for hashes
            end
        }
    }
end

# How would you return the first pokemon with base experience over 40?

def exp_over_40(pokemon)
    pokemon.map{|poke_profile|
        if poke_profile[:base_experience] > 40
            return poke_profile
        end
    }
end
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def all_exp_over_40(pokemon)
    pokemon.map{|poke_profile|
        if poke_profile[:base_experience] > 40
            poke_profile
        end
    }
end

# How would you return an array of all of the pokemon's names?

def pokemon_names(pokemon)
    pokemon.collect{|poke_profile|
        poke_profile[:name]
    }
end
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?

    pokemon.map{|poke_profile|
        if poke_profile[:weight] > 60
            puts "yes, there is a pokemon that weighs over 60lbs"
            return true
        end
}
    puts "no, they're very thin..."
    return false
end
#  whatever method you use should return true if there are any such pokemon, false if not.
