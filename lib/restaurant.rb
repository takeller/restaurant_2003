class Restaurant

  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open_for)
    opening_time_as_integer = opening_time.to_i
    closing_time_as_integer = opening_time_as_integer + hours_open_for
    closing_time_as_integer.to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end 
end
