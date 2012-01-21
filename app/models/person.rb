class Person < ActiveRecord::Base
has_many :teams
has_many :projects, :through=>:teams

end
