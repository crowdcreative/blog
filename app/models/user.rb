class User < ActiveRecord::Base

	has_one :profile, :dependent => :destroy
	has_many :articles, :dependent => :destroy

	accepts_nested_attributes_for :profile
end
