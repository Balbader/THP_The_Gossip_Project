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
    all_gossips.each {|k, v| puts v}
  end
end
