class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    gossip_file = CSV.open("db/gossip.csv", "a")
    gossip_file << [@author, @content]
  end
end
