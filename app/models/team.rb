class Team < ActiveRecord::Base
belongs_to :project
has_many :people
end
