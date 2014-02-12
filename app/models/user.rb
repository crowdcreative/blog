class User < ActiveRecord::Base
	before_save { self.email = email.downcase}

	has_one :profile, :dependent => :destroy
	has_many :articles, :dependent => :destroy

	accepts_nested_attributes_for :profile

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	

	# verifica o password pelo atributo password_confirmation
	has_secure_password

	validates :password, length: { minimum: 6 }

	# Gem paperclip
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	
end
