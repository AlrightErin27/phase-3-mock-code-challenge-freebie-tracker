class Freebie < ActiveRecord::Base
  belongs_to :dev
  belongs_to :company #🦁 🦁 🦁 Freebie.second.company returns instance of Enron

  # 🦁 🦁 🦁 Freebie.first.dev returns instance of Rick. #
  def print_details
    "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
  end
end
