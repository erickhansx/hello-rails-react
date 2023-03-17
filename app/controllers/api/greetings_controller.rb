class Api::GreetingsController < ApplicationController
  def random
    greeting = Greeting.order('RANDOM()').first.message
    render json: { message: greeting }
  end
end
