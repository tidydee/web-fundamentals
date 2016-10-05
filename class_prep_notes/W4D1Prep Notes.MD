#Prep Notes

##Create class
+ name file same anme all in snake_case
+ Class name = Constant = CamelCase

```ruby
class Vehicle
  
  def initialize(passangers, wheels, color)
    @passangers = passangers
    @wheels = wheels
    @color = color
  end

  def get_passengers
    @passangers
  end

  def get_wheels
    @wheels
  end

  def color
    @color
  end

  def move
    "on the move"
  end

end

```

```ruby
require './vehicle'
require './car'
require './bike'

#main.rb

my_vehicle = Vehicle.new(3,4, "red")

puts my_vehicle.get_passengers
puts my_vehicle.get_wheels
puts my_vehicle.get_color
puts my_vehicle.move


end
```
##Create Car Class

```ruby
require './vehicle'

class Car < Vehicle
  
  def initialize(passengers, wheels, color)
    #super looks at the inheritence between Car and Vehicle and will Initiate a Car Object with same variables/data than it's Parent Class, Vehicle
    super(passengers, wheels, color)
  end

  def move
      super()
      "Let's start the engine!"
  end
end


```

```ruby
my_car = Car.new(2,4,"black")
puts my_car.get_color
puts my_car.move

```

```ruby
require './vehicle'

class Bike < Vehicle
  
  def initialize(color)
    #super looks at the inheritence between Car and Vehicle and will Initiate a Car Object with same variables/data than it's Parent Class, Vehicle
    super(1, 2, color)
  end

  def move
      super()
      "Let's start peddling!"
  end
end

```

#NOTE: Watch FULL video from Sarah!!




