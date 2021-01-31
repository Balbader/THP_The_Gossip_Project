require 'controller'

class View
  
  def create_gossip
    puts "Enter author name:"
    print "> "
    author_name = gets.chomp
    puts "What is your gossip?"
    print "> "
    gossip_content = gets.chomp
    return {content: gossip_content, author: author_name}
  end

  def index_gossips(all_gossips)
    #all_gossips.each_with_index {|k, v, i| puts "#{i} author: #{k}\n gossip: #{v}"}
    i = 0
    while i < all_gossips.length
      puts "#{i} : #{all_gossips[i][0]} said #{all_gossips[i][1]}"
      i += 1
    end
  end

  def delete_gossip(all_gossips)
    puts "Select gossip to delete:"
    puts "Enter gossip number to delete:"
    print "> "
    elem_to_delete = gets.chomp.to_i

    i = 0
    while i < all_gossips.length
      if all_gossips[i] == elem_to_delete
        new_index = all_gossips.delete_at(all_gossips[i])
        i += 1
      end
      i += 1
    end
    puts "Here is the list: "
    return new_index
  end


  def print_new_index
    new_index = delete_gossip(index_gossips(all_gossips))
    return index_gossips(new_index)
  end

end
