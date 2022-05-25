class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies # 🦁 🦁 🦁 Dev.first.freebies returns 3 instances of freebies

  # 🦁 🦁 🦁 Dev.second.companies returns 3 instances of companies
  def receieved_one?(item_name)
    self.freebies.any? { |freebie| freebie.item_name == item_name }
  end

  def give_away(dev, freebie)
    #does it belong to you? if yes...
    if (self.freebies.any? { |freebie| freebie == freebie } == true)
      #give to specified dev unles that dev is you
      freebie.update(dev: dev) unless freebie.dev != self
    end
  end
end
