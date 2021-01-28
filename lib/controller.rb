require 'gossip'


class Controller

  def create_gossip
    gossip = Gossip.new("Michel Marcel", "Marcel a mangé Michel")
    gossip = Gossip.new("Michel Marcel", "Marcel a mangé Michel")
    gossip = Gossip.new("Michel Marcel", "Marcel a mangé Michel")
    gossip = Gossip.new("Michel Marcel", "Marcel a mangé Michel")
    gossip.save
  end

end
