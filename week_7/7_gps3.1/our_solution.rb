# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Jon Pabico
# 2. Eiko Seino
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add items to buy to the list
# As a user, I want to know the cost of each item
# As a user, I want to how much (quantity) to buy
# As a user, I want to know the total cost of the items to buy
# As a user, I want to be able to see the list at any time
 
# Pseudocode
# def class GroceryList
# initialize instance variable @list_hash
# define a method for adding items to list
# will require knowing item and quantity
# will be added to @list_hash
# define a method for removing items 
# will require item name
# delete the item from @list_hash
# define a method for adjusting the quantity
# will name and quantity
# change the value of given key to the new quantity
# define a method that displays the list(item and quantity)
 
 
# Your fabulous code goes here....

class GroceryList
  
    attr_reader :list_hash
    
    def initialize
      @list_hash = {}
    end
    
    def add_item_or_change_quantity(item, quantity)
      @list_hash[item] = quantity
    end
    
    def remove_item(item)
      @list_hash.delete(item)
    end
    
    def display_list
      @list_hash.each_pair do |item, quantity|
        puts "We need #{quantity} #{item}(s)" 
      end
    end
end



# DRIVER CODE GOES HERE. 
list = GroceryList.new
 list.add_item_or_change_quantity('avocado', 2)
 list.add_item_or_change_quantity('chicken', 1)
 list.add_item_or_change_quantity('bread', 5)
 p list.list_hash.length == 3
 p list.list_hash['bread'] == 5
 list.display_list
 list.remove_item('bread')
 p list.list_hash.length == 2
 list.display_list
 