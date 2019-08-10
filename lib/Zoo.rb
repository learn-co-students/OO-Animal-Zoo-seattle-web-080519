class Zoo

    attr_accessor :name, :location, :animals #?!
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @animals = animals #?! WELL, I JUST MADE AN INSTANCE METHOD BELOW...DOES THAT WORK? 
        @@all << self
    end

    def self.all
        @@all 
    end

    ##animals should return all the animals that a specific instance of a zoo has.
    def animals
        arr = Animal.all.select do |a|
            a.zoo == self
        end
        arr.collect do |a|
            a.species
        end
    end 

    #should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
    def animal_species
        arr = Animal.all.select do |a|
            a.zoo == self
        end
        arr.collect do |a|
            a.species
        end.uniq
    end

    #should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
    def find_by_species(specie)
        Animal.all.find_all do |a|
            a.species == specie
        end #AM I SUPPOSED TO PUT THIS INTO JUST AN ARRAY OF THE ANIMALS?!right now, just array of all the animal objects; not animal names.
    end

    #return an array of all the nicknames of animals that a specific instance of a zoo has
    def animal_nicknames
        arr = Animal.all.select do |a|
            a.zoo == self
        end
        arr.collect do |a|
            a.nickname
        end
    end

    #should take in a location as an argument and return an array of all the zoos within that location.
    def self.find_by_location(location)
        self.all.select do |l|
            l.location == location
        end
    end

end
