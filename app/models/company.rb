class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies # 🦁 🦁 🦁 Company.second.dev returns 4 instances devs

  # 🦁 🦁 🦁 Company.first.freebies returns 4 instances of freebies
  def give_freebie(dev, item_name, value)
    Freebie.create(
      item_name: item_name,
      value: value,
      dev_id: dev.id,
      company_id: self.id,
    )
  end

  def self.oldest_company
    Company.order(:founding_year).first
  end
end
