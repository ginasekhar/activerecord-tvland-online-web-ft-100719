class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def build_show(show_hash)
        #binding.pry
        new_show = Show.find_or_create_by(show_hash)
        self.show = new_show
    end
end