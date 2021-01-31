require 'gossip'
require 'view'


class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    @view.index_gossips(Gossip.all)
  end

  def gossips_to_delete
    Gossip.modify_csv(@view.delete_gossip(Gossip.all))
  end

end
