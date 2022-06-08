class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find_by(item_name: item_name) == nil ? false : true
    end

    def give_away(dev, freebie)
        if freebie.dev_id == self.id
            freebie.dev = dev
            freebie.save
        else
            "This freebie isn't mine to give, ask #{freebie.dev.name}."
        end
    end

end
