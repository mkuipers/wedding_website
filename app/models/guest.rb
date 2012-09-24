class Guest < ActiveRecord::Base
  attr_accessible :address, :first_name, :invite_id, :last_name
end
