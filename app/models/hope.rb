class Hope < ActiveRecord::Base
	validates :name, :presence => true
	validates :say, :presence => true
end
