class Project < ActiveRecord::Base
  validates :name,  :presence => true
  validates :client, :presence => true
  validates :cost,  :presence => true
  validates :starting_date, :presence => true
  validates :ending_date,  :presence => true
  has_one :team
  has_many :persons, :through => :team

end
