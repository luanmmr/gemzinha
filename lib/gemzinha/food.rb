require 'active_support/inflector'

module Gemzinha
  class Food
    def self.portray(food)
      if food.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end

    def self.pluralize(word)
      word.pluralize
    end

    def self.hello_world
      puts "Hello Earth"
    end
  end
end
