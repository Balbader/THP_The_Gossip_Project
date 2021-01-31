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


  def self.all
  # 1)création d'un array vide qui s'appelle all_gossips
    all_gossips = []
  # 2)chaque ligne de ton CSV.each do |ligne|
    # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
    # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
  # end
    CSV.foreach("db/gossip.csv") do |i|
    all_gossips << i
    end
  # 3)return all_gossips - on renvoie le résultat
    return all_gossips
  end 
  
  def self.modify_csv
    new_list = []
	CSV.foreach("db/gossip.csv","w") do |i|
      new_list << i
    end
    return new_list
  end

end
