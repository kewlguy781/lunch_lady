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
@basket = []
# p @main_dishes
# p @side_dishes
# p @main_dishes.class

# Jon's Note: !!!! If its Class, use <variable>.<info>, if its hash use <variable>[:<info>] !!!!

def print_menu(x) 

    x.each_with_index do |dish, index|
    puts "#{index + 1}) #{dish.name} Price: #{dish.price}"
    end

end

def start_order
order_main
order_side
order_side
in_basket
calc_price
# print @main_dishes, ask for user selection, push the selection into basket array
end

def order_main
    print_menu(@main_dishes)
    select_dish(@main_dishes)
end

def select_dish(x)
    addbasket={}
    puts "please select dish"
    #push the select dish into "basket"
    dish_index = gets.chomp.to_i
    addbasket[:name] = "#{x[dish_index-1].name}"
    addbasket[:price] = "#{x[dish_index-1].price}"
    p addbasket
    @basket << addbasket
    p @basket
end

# print @side_dishes, ask for user selection push the selection into basket array, 
# repeat one more time.
def order_side
    print_menu(@side_dishes)
    select_dish(@side_dishes)
end

# after selecting one main and two side dishes, print the "basket" array
def in_basket
    puts "basket"
end

# total the pricing on the order that is in the basket
def calc_price
    puts "total price"
end

start_order