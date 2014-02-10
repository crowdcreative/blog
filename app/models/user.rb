class User < ActiveRecord::Base

	has_one :profile, :dependent => :destroy
	has_many :articles

	accepts_nested_attributes_for :profile, :reject_if => lambda { |a| a[:facebook].blank?  } 
end
