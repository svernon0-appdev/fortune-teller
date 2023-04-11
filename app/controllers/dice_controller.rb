class DiceController < ApplicationController
  def d6_1
    @array_of_numbers = Array.new

    1.times do
      another_number = rand(1..6)
      @array_of_numbers.push(another_number)
    end

    render({ :template => "dice_rolls/1d6.html.erb" })
  end

  def d6_2
    @array_of_numbers = Array.new

    2.times do 
      another_number = rand(1..6)
      @array_of_numbers.push(another_number)
    end

    render({ :template => "dice_rolls/2d6.html.erb" })
  end

  def d6_3
    @array_of_numbers = Array.new

    3.times do
      another_number = rand(1..6)
      @array_of_numbers.push(another_number)
    end

    render({ :template => "dice_rolls/3d6.html.erb" })
  end
end
