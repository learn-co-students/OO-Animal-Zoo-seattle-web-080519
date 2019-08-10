class Animal

    attr_accessor :species, :weight, :nickname, :zoo
    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all 
        @@all 
    end

    #take in an animal's species as an argument and return an array of all the animals, which are of that species
    def self.find_by_species(specie)
        self.all.select do |a|
            a.species == specie
        end
    end

end
