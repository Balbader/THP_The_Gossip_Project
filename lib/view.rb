class View
  
  def create_gossip
    puts "Enter author name:"
    print "> "
    author_name = gets.chomp
    puts "What is your gossip?"
    print "> "
    gossip_content = gets.chomp
    return params = { content: gossip_content, author: author_name }
  end

  def index_gossips(all_gossips)
    #all_gossips.each_with_index {|k, v, i| puts "#{i} author: #{k}\n gossip: #{v}"}
    i = 0
    while i < all_gossips.length
      puts "#{i} : #{all_gossips[i][0]} said #{all_gossips[i][1]}"
      i += 1
    end
  end
end
