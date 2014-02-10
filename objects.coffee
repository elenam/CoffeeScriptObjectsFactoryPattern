# JavaScript has prototypal inheritance.
# There are no classes. Objects can be created from other
# Objects by copying their properties. It gets messy
# when the "parent" object changes.
# CoffeeScript provides a way to "fake" classes
# and classical (i.e. Java-style) inheritance.

# creating objects with no class declarations

car = {vehicleType: "car", speed: 80}
bicycle = {vehicleType: "bicycle", speed: 15}

vehicles = [car, bicycle]

console.log vehicle.vehicleType + " " + vehicle.speed for vehicle in vehicles

# using classes to create objects (like in Java)

class Vehicle
  constructor: (@vehicleType, @speed) ->

  travelTime: (distance) ->
    distance/@speed

class Car extends Vehicle
  constructor: () -> super "car", 80


class Bicycle extends Vehicle
  constructor: () -> super "bicycle", 15


mycar = new Car
yourbike = new Bicycle
console.log "It takes me " + mycar.travelTime(300) + " hours to travel to TC"
console.log "It takes you " + yourbike.travelTime(300) + " hours to travel to TC"

# JavaScript has prototypal inheritance.
# There are no classes. Objects can be created from other
# Objects by copying their properties. It gets messy
# when the "parent" object changes.
# CoffeeScript provides a way to "fake" classes
# and classical (i.e. Java-style) inheritance.

# creating objects with no class declarations

car = {vehicleType: "car", speed: 80}
bicycle = {vehicleType: "bicycle", speed: 15}

vehicles = [car, bicycle]

console.log vehicle.vehicleType + " " + vehicle.speed for vehicle in vehicles

# using classes to create objects (like in Java)


class Vehicle
  constructor: (@vehicleType, @speed) ->

  travelTime: (distance) ->
    distance/@speed

class Car extends Vehicle
  constructor: () -> super "car", 80
  canDriveOnHighWay: () -> true

class Bicycle extends Vehicle
  constructor: () -> super "bicycle", 15
  canDriveOnHighWay: () -> false


mycar = new Car
yourbike = new Bicycle
console.log "It takes me " + mycar.travelTime(300) + " hours to travel to TC"
console.log "It takes you " + yourbike.travelTime(300) + " hours to travel to TC"


############## Factory design pattern. #########################
# Used if you don't know what type of an object you need to create
# until the runtime, so you cannot call its constructor.

# Factory pattern; other patterns include Singleton, Null, Facade

class VehicleFactory
  constructor: () ->

factory = new VehicleFactory()
try
  aBroomstickMaybe = factory.getVehicle()
catch error
  console.log error

class CarFactory extends VehicleFactory
  getVehicle: () -> new Car

factory = new CarFactory()

movingThing = factory.getVehicle()

console.log movingThing.travelTime(100)

class BicycleFactory extends VehicleFactory
  getVehicle: () -> new Bicycle

factory = new BicycleFactory

movingThing = factory.getVehicle()

console.log movingThing.travelTime(100)
