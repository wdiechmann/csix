class Jobber < ActiveRecord::Base
  belongs_to :person
  acts_as_votable 
end
