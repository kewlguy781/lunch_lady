# {name: 'string' price:float, type: "side|main"}

#Dish Class, - handles both main and side disk as subclass
class Dish
    attr_accessor :name, :price

    def initialize(name, price)
        @name = name
        @price = price
      #  @desc
      #  @nutinfo

    end
end

#Setting up "Menu"
@main_dishes = [Dish.new('Cheeseburger', 5.99), Dish.new("Chicken Sandwich", 5.99)]
@side_dishes = [Dish.new('French Fries', 1.99), Dish.new("Mac and Cheese", 2.49)]
# p @main_dishes
# p @side_dishes
# p @main_dishes.class

# Jon's Note: !!!! If its Class, use <variable>.<info>, if its hash use <variable>[:<type>] !!!!

def print_menu(x) 

    x.each_with_index do |dish, index|
    puts "#{index + 1}) #{dish.name} Price: #{dish.price}"
    end

end

print_menu(@main_dishes)
puts
print_menu(@side_dishes)
# print @main_dishes, ask for user selection, push the selection into basket array

# print @side_dishes, ask for user selection push the selection into basket array, 
# repeat one more time.


# after selecting one main and two side dishes, print the "basket" array

# total the pricing on the order that is in the basket

