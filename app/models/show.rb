class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.map { |actor| actor.full_name }
    end

    # def build_network(network_hash)
    #     new_network = Network.find_or_create_by(network_hash)
    #     self.network = new_network
    # end
end