require 'controller'

class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "What do you wanna do motherfucker??? 1 or 4?"
    while true
      puts "What do you want to do?"
      puts "1 = Write a gossip"
      puts "4 = Quit the app"
      answer = gets.chomp.to_i

      case answer
      when  1
        puts "You decided to create a gossip"
        @controller.create_gossip

      when  4
        puts "See you later ^^"
        break

      else
        puts "Wrong answer, please try again"
      end
    end
  end
end
