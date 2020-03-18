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

  def open_for_lunch?
    return true unless @opening_time.to_i > 11
    false
  end

  def menu_dish_names
    menu_dish_names = []

    @dishes.each do |dish|
      menu_dish_names << dish.upcase
    end
    menu_dish_names
  end

  def announce_closing_time(hours_open_for)
    closing_time_24_hour = closing_time(hours_open_for)
    if closing_time_24_hour.to_i < 13
      closing_time_12_hour = closing_time_24_hour.to_i
      return "#{name} will be closing at #{closing_time_12_hour.to_s}:00AM"
    else
      closing_time_12_hour = closing_time_24_hour.to_i - 12
      return "#{name} will be closing at #{closing_time_12_hour.to_s}:00PM"
    end
  end
end
