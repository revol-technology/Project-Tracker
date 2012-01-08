class Project < ActiveRecord::Base
  validates :name,  :presence => true
  validates :client, :presence => true
  validates :cost,  :presence => true
  validates :starting_date, :presence => true
  validates :ending_date,  :presence => true
  has_and_belongs_to_many :people
end
