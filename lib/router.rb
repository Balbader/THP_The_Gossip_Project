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
      puts "2 = Show all gossips"
      puts "3 = Delete gossip(s)"
      puts "4 = Quit the app"
      params = gets.chomp.to_i

      case params
      when  1
        puts "You decided to create a gossip"
        @controller.create_gossip

      when 2
        puts "You decided to show all gossips"
        @controller.index_gossips

      when 3
        puts "Please select gossips to delete:"
        @controller.index_gossips
        puts "Enter the number of the gossip to delete:"
        print "> "
        elem_to_delete = gets.chomp.to_i
        puts "would you like to select another element?"
        puts "Y for Yes of N for No"
        new_add = gets.chomp
        while new_add != "N"
          @controller.index_gossips
          puts "Enter the number of the gossip to delete:"
          print "> "
          elem_to_delete = gets.chomp.to_i
          puts "would you like to select another element?"
          puts "Y for Yes of N for No"
          new_add = gets.chomp

          if new_add == "N"
            puts "You have selected the following gossips to delete:"
            @controller.gossips_to_delete
            puts "Would you like to proceed?"
            puts "Enter Y for Yes of N for NO"
            print "> "
            choice = gets.chomp
            if choice == "Y"
              @controller.delete_gossips
              puts index_gossips - delete_gossips
            else
              puts "Wise choice"
              @controller.create_gossip
            end
          end
        end

      when  4
        puts "See you later ^^"
        break

      else
        puts "Wrong answer, please try again"
      end
    end
  end

end
