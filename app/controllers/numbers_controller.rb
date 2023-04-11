class NumbersController < ApplicationController
  def winners
    @lucky_numbers = Array.new

    5.times do
      new_number = rand(1...100)
      
      @lucky_numbers.push(new_number)
    end

    render({ :template => "lottery_stuff/lucky_numbers.html.erb" })
  end 

  def losers
    @unlucky_numbers = Array.new

    5.times do
      new_number = rand(1...100)

      @unlucky_numbers.push(new_number)
    end

    render({ :template => "lottery_stuff/unlucky_numbers.html.erb" })
  end
end
