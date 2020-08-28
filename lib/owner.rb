require 'pry'

class Owner
  @@all_owners = []
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners.push(self)
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all_owners
  end
  
  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select do |kat|
       kat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |kat|
      kat.mood = "happy"
    end
  end

  def sell_pets
  #   if self.cats.owner == nil
  #     self.cats.mood = "nervous"
  #   end
  #   if self.dogs.owner == nil
  #     self.dogs.mood = "nervous"
  #   end

  #   self.cats.each do |kat|
  #     kat.owner = nil
  #   end
  #   self.dogs.each do |dog|
  #       dog.owner = nil
  #   end
  #    self.reset_all
  # end
end


